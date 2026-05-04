#set document(title: "Bruno Croci's Resumé", author: "Bruno Croci")
#set page(
  paper: "a4",
  margin: (x: 2cm, y: 2cm),
)

#set list(indent: 1em, body-indent: 0.5em, spacing: 0.7em)
// #set text(font: "New Computer Modern", size: 11pt)

#show heading.where(level: 2): it => block(
  [
    #set text(size: 12pt, weight: "bold")
    #smallcaps(it.body)
    #v(-0.9em)
    #line(length: 100%, stroke: 0.2pt)
  ]
)

#align(center)[
  #text(size: 28pt, weight: "bold")[Bruno Croci] \
  #v(-0.5em)
]

#align(right)[
  Düsseldorf - Germany \
  bruno\@croci.me - #link("https://bruno.croci.me/")[https://bruno.croci.me/]
]

== Summary
A seasoned generalist programmer with a passion for creating experiences and building robust systems. 15+ years of experience spanning gameplay, audio, and tools development, with a track record of delivering impactful features for AAA, VR, mobile and online games. Specializing in C++, C\#, Javascript, and a deep understanding of systems programming, web and audio pipelines.

== Experience

*Senior Audio Programmer* #h(1fr) 11.2022 - current \
*Programmer* #h(1fr) 04.2020 - 11.2022 \
_Ubisoft Düsseldorf_, Düsseldorf, Germany
- Audio systems development for AC Nexus, XDefiant and other unannounced titles, such as VO pipeline, sound propagation, emitter management, etc.
- Creating audio tools to support Audio Designers, bridging the middleware Wwise with in-house engine Snowdrop and implementing new features in the engine.
- Maintain the base AI code for NPCs in the Assassin's Creed Nexus game.
- Implement tools for animators to have more control when implementing NPCs behaviors animations.
- Developing prototypes for features and possible games with owned IPs.
- Keywords: C++, C\#, Snowdrop, Wwise, Behavior Trees, AI Programming.

#v(1em)

*Software Developer* #h(1fr) 01.2019 - 03.2020 \
_Touch Press Inc._, Dublin, Ireland
- Main developer maintaining Hungry Caterpillar#sym.trademark Play School., an educational app for children.
- Collaborate with learning designers to add new content to the app.
- Optimizing the pipeline to improve the quality of life of designers and artists, from contribution to deploy.
- Implementing new features for future activities and mini-games.
- Maintaining the subscription system and implementing campaigns.
- Keywords: C\#, Unity, Android, iOS, AWS.

#v(1em)

*Senior Game Engineer* #h(1fr) 04.2017 - 01.2019 \
*Game Developer* #h(1fr) 02.2014 - 03.2017 \
_Samsung Electronics / Black River Studios_, Manaus, Brazil
- As a first-party Samsung game studio, our goal was to showcase new technologies and devices.
- Wrote the ballistic system for Conflit0: Shattered, a VR shooter game.
- Ported Conflict0: Revolution from Tizen to Android and implemented the systems to support the new history DLC.
- Building the initial game architecture in Finding Monsters Adventures, a mobile and VR photography game. Based on a custom pubsub broker to have all the game systems communicate. Also other systems such as achievements and missions.
- Implementation of a full backend service for Galaxy11: Invation, a mobile runner game made to demonstrate the power of Samsung Galaxy S4. RESTful API to store player profiles and leaderboards written in Python with Flask, using MySQL and Redis.
- Keywords: C\#, Unity, VR, GearVR, Windows Mixed Reality, Tizen.

#v(1em)

*Game Developer* #h(1fr) 11.2011 - 01.2014 \
_Hive Digital Media_, São Paulo, Brazil
- Implemented Playboy Poker, a licensed online poker game targeting the Latin America market, that ran on Facebook. I wrote all the client code in AS3 (Flash), and a big part of the server in Java using SmartFoxServer.
- Later I ported that project into another licensed poker game (this time for a local sports TV). I was responsible for the full port as well as maintaining the integrations between the real-time server and the user registration system (written in PHP).
- Implemented Tako Kamis, a game inspired by My Brute and Pokémon, for the SmartTV LG platform. I also implemented the server side Rest API (in PHP with Zend Framework) that controlled the whole game, including multiplayer matches, battle logic and user registration code.
- Keywords: Flash, AS3, Unity, C\#, Javascript, Android, iOS, Java.

#v(1em)

*Game Programmer* #h(1fr) 09.2010 - 11.2011 \
_Loopix Digital Group_, São Paulo, Brazil
- Game development with Flash and AS3.
- Concept and implementation of communication protocols to integrate games with the platform.
- Keywords: C\#, AS3, Java, Javascript.

#v(1em)

*Web Developer* #h(1fr) 01.2009 - 10.2009 \
_Detetive.net_, São Paulo, Brazil
- Full-stack development of a photo sharing social network.
- Keywords: PHP, CSS, HTML, Javascript.


== Formal Education
*Computer Science Technician* \
Colégio Eniac - São Paulo \
conclusion: 2008

== Relevant Personal Projects
- #link("https://github.com/crocidb/bulletty")[*bulletty*]: A modern TUI feed reader that stores articles locally as Markdown. Written in Rust.
- #link("https://github.com/crocidb/annileen")[*annileen*]: A toy 3D game engine made in C++ using BGFX as a graphics backend. Tooling is mostly in Python.
- #link("https://github.com/crocidb/flingern")[*flingern*]: Art gallery static website generator written in Python. It powers my art website.

== Additional Information
- Linkedin profile: #link("https://www.linkedin.com/in/crocidb")[https://www.linkedin.com/in/crocidb]
- Github profile with code samples: #link("https://github.com/crocidb")[https://github.com/crocidb]
- Personal Blog: #link("https://crocidb.com/")[https://crocidb.com/]
