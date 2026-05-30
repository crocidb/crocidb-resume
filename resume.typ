#set document(title: "Bruno Croci's Resumé", author: "Bruno Croci")
#set page(
  paper: "a4",
  margin: (x: 2cm, y: 2cm),
)

#set list(indent: 1em, body-indent: 0.5em, spacing: 0.7em)

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

A seasoned generalist programmer with a passion for crafting experiences and building systems that impact people's lives. *16+ years* of professional experience contributing with AAA, VR, mobile and online games, spanning Gameplay, Audio, and tools development. Looking for opportunities that leverage creative thinking over brute-force development, not necessarily in video games. Focus on leadership, user experience and problem solving. Particularly interested in creating cool stuff with cool people, learning new technologies on the way.

As a creative person, spends a lot of free time working on tech experiments, small games, music and writing. All that can be checked out at *#link("https://crocidb.com/")[https://crocidb.com/]*.

== Experience

*Senior Audio Programmer* #h(1fr) 11.2022 - current \
*Programmer* #h(1fr) 04.2020 - 11.2022 \
_Ubisoft Düsseldorf_, Düsseldorf, Germany
- Audio systems development for *XDefiant* and other unannounced titles, such as _VO pipelines_, _sound propagation_, _emitter management_, etc.
- Creating audio tools to support Audio Designers, bridging the middleware *Wwise* with in-house engine *Snowdrop* and implementing new features in the engine.
- Maintain the base AI code for NPCs in the *Assassin's Creed: Nexus* game.
- Implement tools for animators to have more control when implementing NPCs behaviors animations.
- Developing prototypes for features and possible games with owned IPs.
- *Keywords*: C++, C\#, Unreal Engine, Snowdrop, Wwise, Unity, Behavior Trees, AI Programming.

#v(1em)

*Software Developer* #h(1fr) 01.2019 - 03.2020 \
_Touch Press Inc._, Dublin, Ireland
- Main developer maintaining *Hungry Caterpillar#sym.trademark Play School*., an educational app for children.
- Collaborate with Learning Designers to add new content to the app.
- Optimizing the pipeline to improve quality of life for designers and artists, from contribution to deploy.
- Maintaining the subscription system and implementing campaigns.
- *Keywords*: C\#, Unity, Android, iOS, AWS.

#v(1em)

*Senior Game Engineer* #h(1fr) 04.2017 - 01.2019 \
*Game Developer* #h(1fr) 02.2014 - 03.2017 \
_SIDIA / Samsung Electronics / Black River Studios_, Manaus, Brazil
- As a first-party Samsung game studio, our goal was to showcase new technologies and devices.
- Wrote the ballistic system for *Conflit0: Shattered*, a VR shooter game.
- Ported *Conflict0: Revolution* from Tizen to Android and implemented the systems to support the new history DLC.
- Built multiplayer and gameplay systems for *Rock'n'Rails*, a local co-op multiplayer VR game.
- Building the initial game architecture in *Finding Monsters Adventures*, a mobile and VR photography game. Based on a custom pubsub broker to have all the game systems communicate. Also other systems such as achievements and missions.
- Implementation of a full backend service for *Galaxy11: Invation*, a mobile runner game made to demo the power of *Samsung Galaxy S4*. RESTful API to store player profiles and leaderboards written in Python with Flask, using MySQL and Redis.
- *Keywords*: C\#, Unity, VR, GearVR, Windows Mixed Reality, Tizen.

#v(1em)

*Game Developer* #h(1fr) 11.2011 - 01.2014 \
_Hive Digital Media_, São Paulo, Brazil
- Implemented *Playboy Poker*, a licensed Facebook Poker game targeting the Latin America market. I wrote all the client code in AS3 (Flash), and a big part of the server in *Java* using *SmartFoxServer*.
- Later, I ported that project into another licensed poker game (this time for a local sports TV). I was responsible for the full port as well as maintaining the integrations between the real-time server and the user registration system (written in *PHP*).
- Implemented *Tako Kamis*, a game inspired by My Brute and Pokémon, for the *SmartTV LG* platform. I also implemented the server side Rest API (in PHP with Zend Framework) that controlled the whole game, including multiplayer matches, battle logic and user registration code.
- *Keywords*: Flash, AS3, Unity, C\#, Javascript, Android, iOS, Java.

#v(1em)

*Game Programmer* #h(1fr) 09.2010 - 11.2011 \
_Loopix Digital Group_, São Paulo, Brazil
- Game development with *Flash* and *AS3*.
- Concept and implementation of communication protocols to integrate games with the platform.
- *Keywords*: C\#, AS3, Java, Javascript.

#v(1em)

*Web Developer* #h(1fr) 01.2009 - 10.2009 \
_Detetive.net_, São Paulo, Brazil
- Full-stack development of a photo sharing social network.
- *Keywords*: PHP, CSS, HTML, Javascript.


== Formal Education

*Computer Science Technician* #h(1fr) 2006 - 2008 \
_Colégio Eniac_, Guarulhos, Brazil \
- Technical training on Programming, Networks and Web Technologies

== Relevant Personal Projects

- #link("https://github.com/crocidb/bulletty")[*bulletty*]: A modern TUI feed reader that stores articles locally as Markdown. Written in Rust.
- #link("https://github.com/crocidb/annileen")[*annileen*]: A toy 3D game engine made in C++ using BGFX as a graphics backend. Tooling is mostly in Python.
- #link("https://github.com/crocidb/flingern")[*flingern*]: Art gallery static website generator written in Python. It powers my art website.

== Additional Information

- Personal and Technical Blog: #link("https://crocidb.com/")[https://crocidb.com/]
- Github profile with code samples: #link("https://github.com/crocidb")[https://github.com/crocidb]
- Linkedin profile: #link("https://www.linkedin.com/in/crocidb")[https://www.linkedin.com/in/crocidb]
