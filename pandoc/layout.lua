-- Pandoc Lua filter: adds semantic classes to resume HTML output
local function inlines_has_smallcaps(inlines)
  for _, inline in ipairs(inlines) do
    if inline.t == 'SmallCaps' then
      return true
    end
    if inline.t == 'Span' and inline.classes:includes('smallcaps') then
      return true
    end
  end
  return false
end

local function inlines_starts_with_strong_or_em(inlines)
  if not inlines or #inlines == 0 then
    return false
  end
  for _, inline in ipairs(inlines) do
    if inline.t == 'Strong' or inline.t == 'Emph' then
      return true
    end
    if inline.t == 'Str' and inline.text:match('^%s*$') then
      -- skip whitespace-only strings
    elseif inline.t == 'Space' or inline.t == 'SoftBreak' then
      -- skip spaces
    else
      return false
    end
  end
  return false
end

local function is_whitespace_like(inline)
  if inline.t == 'Space' or inline.t == 'SoftBreak' then
    return true
  end
  if inline.t == 'Str' and inline.text:match('^[%s\u{2000}-\u{200F}\u{202F}\u{205F}\u{3000}]*$') then
    return true
  end
  return false
end

local function wrap_job_dates(inlines)
  local result = {}
  local i = 1
  while i <= #inlines do
    local inline = inlines[i]
    -- Only wrap dates after Strong (job titles use *...*, company names use _..._ → Emph)
    if inline.t == 'Strong' then
      table.insert(result, inline)
      i = i + 1
      while i <= #inlines and is_whitespace_like(inlines[i]) do
        i = i + 1
      end
      local date_inlines = {}
      while i <= #inlines and inlines[i].t ~= 'LineBreak' and inlines[i].t ~= 'SoftBreak' do
        table.insert(date_inlines, inlines[i])
        i = i + 1
      end
      if #date_inlines > 0 then
        table.insert(result, pandoc.Span(date_inlines, {class = 'job-date'}))
      end
    else
      table.insert(result, inline)
      i = i + 1
    end
  end
  return result
end

function Pandoc(doc)
  local new_blocks = {}
  local i = 1
  local blocks = doc.blocks

  while i <= #blocks do
    local block = blocks[i]

    -- Section heading: Para with .smallcaps followed by HorizontalRule
    if block.t == 'Para' and inlines_has_smallcaps(block.content) then
      local section_div = pandoc.Div({})
      table.insert(section_div.content, block)
      i = i + 1
      if i <= #blocks and blocks[i].t == 'HorizontalRule' then
        table.insert(section_div.content, blocks[i])
        i = i + 1
      end
      section_div.classes = {'section-heading'}
      table.insert(new_blocks, section_div)
    -- Job entry: Paragraph starting with Strong/Emph, possibly followed by a BulletList
    elseif block.t == 'Para' and inlines_starts_with_strong_or_em(block.content) then
      local job_div = pandoc.Div({})
      local new_content = wrap_job_dates(block.content)
      table.insert(job_div.content, pandoc.Para(new_content))
      i = i + 1
      if i <= #blocks and blocks[i].t == 'BulletList' then
        table.insert(job_div.content, blocks[i])
        i = i + 1
      end
      job_div.classes = {'job-entry'}
      table.insert(new_blocks, job_div)
    else
      table.insert(new_blocks, block)
      i = i + 1
    end
  end

  doc.blocks = new_blocks
  return doc
end
