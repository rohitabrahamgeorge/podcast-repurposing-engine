# Archetypes, Devices, and Routing

Contents:
1. The thirteen image archetypes
2. The overlay device library
3. Beat to archetype routing
4. Rotation rules

---

## 1. The thirteen image archetypes

Every slide gets exactly one. Each entry gives what it is, when it wins, and the prompt seed to build from.

### A1. Anachronism portrait
A classical, period, or historical subject wearing or holding a modern object. A baroque noblewoman in a VR headset. A Victorian clerk with a smartphone. A Renaissance painter at a standing desk.

**Wins on**: covers, "the old way versus the new way", category claims, anything about outdated methods.
**Why it is reliable**: the shock is conceptual rather than physical, so generators render it cleanly on the first try. Highest hit rate of any archetype. Reach for this under time pressure.
**Seed**: `Medium portrait of a [period] figure in [period costume detail], wearing [modern object], against [simple graded ground]`

### A2. Body uncanny
The human form altered: buried to the chin, fragmented, doubled, mirrored, or with an object replacing the head.

**Wins on**: covers, hidden truths, feeling stuck, self-sabotage.
**Caution**: the sand-buried head is overexposed. Use burial variants only with a different medium (paper, water, foliage, cables).
**Seed**: `[Shot type] of a figure [altered state], [environment], surreal but photoreal`

### A3. Impossible placement
A person somewhere they physically cannot be. A man in a suit sitting on a single cloud. A desk on the ocean floor. An office chair in a desert.

**Wins on**: recognition beats, isolation, absurdity of the status quo.
**Caution**: needs careful lighting language or the composite reads as fake. Specify that light on the subject matches the environment.
**Seed**: `Wide shot of [ordinary person doing ordinary thing] positioned [impossible location], matched natural lighting`

### A4. Duotone crop
Extreme close crop of a face, eyes, or hands, graded hard to one hue with the background crushed to near black.

**Wins on**: emotional pivots, uncomfortable truths, focus and attention themes, dense text slides where the photo must recede.
**Why it is reliable**: crops hide the hands and full-body anatomy that generators get wrong. Second highest hit rate.
**Seed**: `Extreme close crop on [eyes / hands], lit by a single [colour] source, background crushed to black`

### A5. Lifestyle negative space
Real, unstylised documentary photography with the subject pushed hard to one side of the frame.

**Wins on**: dense teaching slides where three or four copy blocks need a home.
**The trick**: choose the photo for where it is empty, not for what it shows. The subject is a mood, the void is the point.
**Seed**: `Documentary photograph of [person] [natural action] in [real environment], subject occupying the right half, left half open and simple`

### A6. 3D device mockup array
Two or three screens, cards, or prints floating in perspective, the outer ones rotated and thrown out of focus, on a dark ground with a faint grid.

**Wins on**: showing your own artifact, proof slides, before and after, product beats.
**Seed**: `Three floating tablet screens in three-quarter perspective on a near-black background with a faint dot grid, centre screen sharp, outer two rotated and blurred`

### A7. 3D abstract render
Torus, spiral, knot, liquid chrome, glass, or voxel forms floating in a void with studio lighting.

**Wins on**: framework and system beats where there is no literal subject to photograph.
**Seed**: `Glossy [form] render floating in a dark void, studio three-point lighting, soft reflections, octane render`

### A8. 3D icon object
One single glossy rendered object: folder, key, chart, lock, envelope, ladder, magnet.

**Wins on**: process steps, small punctuation slides, data beats.
**Seed**: `Single glossy 3D [object] floating, soft studio light, [hue] material, clean seamless background`

### A9. Flat vector field
No photograph. A solid or lightly textured ground plus flat geometric shapes: starburst, bookmark, spike burst, blob, thick rules. Shapes bleed off one frame edge.

**Wins on**: checklists, numbered lists, framework recaps, quiet slides that still need energy.
**Note**: often faster to build entirely in Canva. Only prompt Gemini for the textured ground.

### A10. Textured paper
Cream canvas, paper fibre, linen, concrete, or heavy grain. Nothing else in frame.

**Wins on**: the rest beat, the silence before the CTA.
**Seed**: `Flat overhead of [cream textured paper / raw linen], even soft light, subtle fibre detail, no objects`

### A11. Environmental force
Fire, smoke, water surface, cracked earth, storm wall, dust cloud. No human present.

**Wins on**: the loudest, highest-tension slide in the deck.
**Seed**: `Abstract macro of [force], [hue] dominant, dramatic directional light, heavy atmosphere`

### A12. Scale inversion
A tiny human against something enormous, or a giant everyday object where it does not belong.

**Wins on**: overwhelm, market size, the thing the reader is up against, the promise slide.
**Seed**: `Wide environmental shot of a small lone figure dwarfed by an enormous [object], [environment], dramatic scale contrast`

### A13. Human intensity
The real creator or client. Half-lit, direct gaze, tight crop, motion streaks trailing off the face.

**Reserved for the CTA slide only.** Spending it earlier costs the close its impact. Usually this is a real supplied photo rather than a generation. If generating, describe the person generically and note that the client's own photo should be swapped in.

---

## 2. The overlay device library

Never generated. Always composited on top. One device per slide, no more. A hero image plus one device plus one punch box is the maximum before the eye loses the path.

| Device | What it is | Best for |
|---|---|---|
| Punch box | Inverted solid rectangle holding the one quotable line | Every slide, the default |
| NOT / YES cards | Two white rounded cards side by side | Judgment, right versus wrong |
| Pill tags | Stacked coloured pills, one item each | Question lists, prompt lists |
| Numbered circles | Outlined circles 1 to 4 with one line each | Sequential checks, short frameworks |
| Checkbox list | Empty squares plus one line each | Standards, quality gates, final checkpoint |
| Arrow chain | Terms joined inline by arrow glyphs | Showing a structure in one line |
| Step circles | Three large filled circles with a phase and a range | Zone diagrams, Setup / Tension / Payoff |
| Roadmap boxes | N boxes each with a coloured left bar | The contents page on slide 2 |
| Glassmorphic card | Semi-transparent blurred card over a screen | Device mockup slides |
| Dashed curved arrow | Connects two overlay elements | Adds hand-drawn energy, links a tag to an icon |
| Handwritten scrawl | Marker annotation over clean type, one word only | Covers, adds a human mark against precise type |
| Flat accent shape | Starburst, bookmark, spikes, bleeding off one edge | Text-only slides that need energy |
| Text band | Full-width solid band across the bottom | Closing line on a photo slide |

---

## 3. Beat to archetype routing

| Slide job | Primary | Fallback | Typical overlay |
|---|---|---|---|
| Cover, stop the scroll | A1 anachronism | A2 body uncanny, A6 device array | Huge clipped type, proof inserts, scrawl |
| Promise and roadmap | A12 scale inversion | A7 abstract render | Roadmap boxes |
| Problem or pain | A4 duotone crop | A11 environmental force | Punch box |
| Mirror, recognition | A3 impossible placement | A5 lifestyle | Floating quoted sentence |
| Framework or system | A7 abstract render | A9 flat vector | Arrow chain or step circles |
| Process steps | A8 3D icon | A9 flat vector | Numbered circles or pill tags |
| Proof or data | A6 device array | A8 3D icon | Glassmorphic card, dashed arrow |
| Loudest tension slide | A11 environmental force | A2 body uncanny | Step circles on solid colour |
| Emotional turn | A4 duotone crop | A11 light as subject | Italic serif line set apart |
| Dense teaching slide | A5 lifestyle negative space | A10 textured paper | Stacked copy blocks in the void |
| Rest beat, silence | A10 textured paper | A9 flat vector | One punch box only |
| CTA | A13 human intensity | A1 anachronism | Trigger word, giant, accent colour |

---

## 3b. The metaphor test

Before choosing an archetype, state what the slide does to the reader in one sentence containing none of the topic's own vocabulary. Then find a picture of that sentence.

Worked example. Slide job: your whole month of content already exists inside one recording.
- Mechanism sentence: "one thing enters, many things leave, and nothing was added."
- Picture: a beam striking a prism and fanning into thirty rays.
- Rejected: a farmer, because that only illustrates the word "harvest" and says nothing about the mechanism.

Second worked example. Slide job: the same clip goes to exactly three platforms.
- Mechanism sentence: "one object, three identical copies, same source."
- Picture: one cube casting three identical hard shadows.
- Rejected: seeds scattering on wind, because scattering means infinite dispersal, not exactly three, and it repeated the cover's setting.

**Failure signatures to watch for:**
- The image illustrates a word in the headline rather than the idea beneath it
- The image would still make sense if the slide's topic changed entirely
- Two slides share a setting, a palette family, or a subject
- A human face appears anywhere other than the CTA slide

## 4. Rotation rules

- No archetype repeats within three consecutive slides.
- A13 appears once, on the CTA, never earlier.
- At least one slide in every deck is A9 or A10, the rest beat. A deck of ten photographs is exhausting.
- If two adjacent slides both need photography, make one a tight crop and the other a wide shot so the visual weight differs.
- Under time pressure, weight toward A1, A4, A6, A8, A10 and A11. These generate cleanly. A2 and A3 need more retries.
