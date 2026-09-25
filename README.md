# Shri-Shikshayatan-School
Genesis 2026 Class: 9-12 Buildathon
ESCAPE: THE HOLLOW GALLERY
A short first-person psychological horror escape game set in a museum that should have been empty.
At 5:00 PM, the gallery doors seal. You have six ten-minute skips to solve five linked puzzles, reach the vault, and get out before 6:00 PM.
SET UP:
1. THE INTRO SCENE(A video will get played)-
Before the main game begins, an emergency broadcast interrupts the screen. It reports several missing people and an unidentified temporal anomaly, described by witnesses as a “hole in time.” The broadcast warns you to:
Not return to the place you came from
Not follow voices belonging to people you know
Not trust clocks, photographs, or written dates
Not assume another person is from your time
Never approach anything that looks like yourself
Not let the clock reach 6:00 PM
This is a scripted, glitching in-browser cutscene, not a separate video file. It uses animated static, timestamp drift, scanlines, warning cards, generated audio, and a Space prompt to skip it.
- a screen appears where the name of the game, the rules are shown
-the next interface from the player’s view, and a motion of blinking twice.
-the player has now entered the game
2. -The player realize that he\she has been trapped. And to get out they need to solve
the puzzles.
Display Cabinet: identify genuine gems from randomized equations to earn the UV Flashlight.
Grandfather Clock: use the flashlight and clues to set the correct time; receive a Vault Map Fragment.
Numbered Dial Lock: arrange randomized dials in the correct order; receive the Dial Key.
Curator’s Desk: solve a riddle about the drawer seal; receive the Brass Key.
The Portrait: Entity encounter. Face the watcher
The Vault: use the Brass Key and decide whether to leave immediately or read the curator’s final entry first.
3. BACKGROUND
- Time is ticking from 5 to 6
- At 6 the museum closes
- Lights flicker
- With every WRONG ANSWER SELECTION IN THE PUZZLE, TIME JUMPS
BY 10 MINS
- In total the player get 5 chances. If all chances are gone the player needs to
replay from start
- As the puzzles get fulfilled we get some items(a announcement is made that
the items are received and collected)
- Those items are required for further steps
- The objects collected is put into a exhibit.
4. If the player is able to finish the game in time before 6 or has the lives left
- They will be able to get out
Single-file HTML project; no build step required
Vanilla JavaScript, CSS, and Three.js r128
WebGL rendering with custom geometry, fog, lighting, film grain, and glitch effects
Web Audio API for ambience, music, static, warning tones, and chase audio
Pointer Lock API for first-person mouse-look
Procedural puzzles and procedural audio effects
Reduced-motion support through prefers-reduced-motion
Most textures and audio are embedded as data: URIs
Credits and asset notes:
Three.js r128 for 3D rendering, under the MIT License.
Nosifer and Special Elite from Google Fonts, loaded at runtime.
Embedded clock, brass, marble, environment, and audio assets supplied with the HTML build.
Procedural geometry, textures, noise, static, and Web Audio effects created in the source.
Additional 3D models: Sketchfab
