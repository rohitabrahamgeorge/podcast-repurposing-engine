# Design System

Contents:
1. Typography scale and placement laws
2. Colour and grading
3. Cover composition anatomy
4. CTA slide anatomy
5. Production checklist

---

## 1. Typography scale and placement laws

Two fonts, one job each. A high-contrast display serif carries the one word that matters per slide. A bold grotesque sans carries the thesis and body. The signature construct is lowercase sans "the" stacked above a huge serif Noun.

Sizes measured at 1080 x 1350.

| Role | Size | Font | Notes |
|---|---|---|---|
| Cover hero word | 190 to 210px | Display serif | Bleeds past both safe margins, letters may clip the frame |
| Cover secondary word | 130 to 150px | Serif italic | Sits lower, on the foreground plane |
| Beat name | 110 to 130px | Display serif | Preceded by lowercase sans "the" at ~55px directly above |
| Thesis line | 46 to 52px | Bold grotesque | Max 2 lines, the widest text block on the slide |
| Support copy | 34 to 38px | Grotesque regular or medium | Max 3 lines |
| Punch box copy | 36 to 40px | Grotesque medium | Inside an inverted box |
| Kicker | 22px, tracking 0.3em | Grotesque caps | Top left, paired with a rule running to ~70% width |
| Masthead | 18px caps | Grotesque | Three columns: date left, handle centre, role right |

**Placement laws**

1. Left-align everything to a hard margin at ~8% of frame width. Only the masthead centres.
2. Headline block in the top third. Image breathes in the middle. Support copy and punch box in the bottom third.
3. Letters may clip the frame edge on cover and hero slides. That crop is what signals scale.
4. Type never sits on a busy area. Either the plate has built-in negative space, or a solid box goes underneath.
5. Line height around 0.95 on display type so multi-line headlines read as one mass.
6. Interleave type with the subject on the cover: the hero word behind the subject, the payoff word in front. That z-axis crossing is what makes a flat composite read as a real scene.

**Alternative type system**: an ultra-condensed heavy sans (Anton, Druk, Bebas style) in all caps, white, spanning the full frame width, works as a substitute for the serif system on louder, more mainstream decks. Pick one system per deck and hold it.

---

## 2. Colour and grading

**One accent colour per deck.** A hot orange around #F15A22 is the reference default. It appears eight times or fewer across the whole deck, only on: the emphasis word in a thesis line, comparison labels, the left bars on roadmap boxes, and the CTA trigger word. Because it is rare, it functions as a command.

**Grading recipe applied to every plate**, which is what makes ten different images feel like one set:
- Push each image toward a single dominant hue. Vary the hue slide to slide, keep the treatment identical.
- Lift the shadows slightly and tint them toward the dominant hue rather than crushing to neutral black.
- Keep highlights warm and slightly blown where the light source sits.
- High saturation inside a narrow range. Two hues maximum per image. Richness comes from saturation within a narrow palette, not from many colours.
- A subtle grain or paper texture over the whole frame, including the flat slides.

**Contrast pattern**: every slide is either dark type on a light or mid field, or light type on a dark field. Never mid on mid. Alternate across the deck so the swipe has a visible pulse.

---

## 3. Cover composition anatomy

The cover is a five-layer composite. Build it in this order.

1. **Graded background.** A two-hue gradient ground, deep at the top, warm at the horizon. Horizon around 62% height.
2. **Hero subject.** Scaled large, roughly 40% of frame width, anchored so the environment interacts with it rather than sitting behind it.
3. **Proof inserts.** Two miniatures of your own past artifacts, tilted a few degrees, soft shadows, so they read as physical prints in the scene. This is the highest-leverage detail on the cover: it proves you make the thing you are teaching, teases the back catalogue, and adds z-axis depth.
4. **Type, interleaved.** Hero word behind the subject at the top, payoff word in front of the foreground plane at the bottom.
5. **Masthead.** Small tracked caps across the very top with the handle and one piece of social proof, placed where a magazine puts its issue line.

**The reusable rule**: the cover must contain physical evidence of the thing it teaches. Teaching carousels, show carousels. Teaching podcast growth, show two episode thumbnails. Teaching outbound, show two phone screens with real reply threads. Never a stock icon, always a miniature of your own artifact.

---

## 4. CTA slide anatomy

1. The real face, half-lit, direct gaze, cropped tight, motion streaks behind for urgency.
2. "My name's" small sans, then the first name huge in serif italic. Personal, not corporate.
3. The brand positioning line in the opposite top corner. Not a sentence about this post.
4. The instruction stack in the lower third:
   - "comment" in medium sans, lowercase
   - THE TRIGGER WORD in enormous accent-colour caps, bleeding to both edges
   - the reward in plain sans, two lines, describing exactly what arrives
5. No links, no arrows, no "follow for more". One action only.

The trigger word is the largest object in the frame because the entire funnel depends on someone typing one word. Size removes the friction.

---

## 5. Assembly and export

Once every slide is generated, assemble before delivery.

**Normalise.** Generators return slightly off-ratio files, commonly 1092x1440 or 1122x1402. Centre-crop each to exactly 4:5, then resize to 1080x1350. Centre-cropping trims roughly 35 to 40 pixels top and bottom, so check that no punch box or kicker was clipped.

**Two outputs, because the platforms differ.**
- Instagram takes images, so deliver the eight PNGs individually, named in swipe order.
- LinkedIn document posts take a PDF, so deliver a single multi-page PDF at the same 4:5 ratio.

**Verify the order before assembling.** Crop the top strip of each file and read the kicker. Generated filenames are timestamps and almost never match the swipe order.

**Consistency sweep across the finished set.** Check the handle is identical on the cover and the CTA, that the accent colour appears on one word per slide, and that no glyph rendered incorrectly. Small garbles in short words are the most common defect and are faster to patch in Canva than to regenerate.

## 6. Production checklist

Run this before any deck ships.

- Cover contains physical proof of the thing being taught
- Cover type crosses both in front of and behind the subject
- Two miniature artifacts on the cover, tilted, shadowed
- No archetype repeated within three slides
- At least one rest beat with no photograph
- Human face appears only on the CTA slide
- Temperature strip has no three consecutive matches
- Exactly one punch box per slide
- Exactly one overlay device per slide
- Accent colour used eight times or fewer across the deck
- The payoff slide pre-scripts the CTA wording verbatim
- The trigger word is the largest object on the CTA slide
- Covering any slide breaks the next one
- Every Gemini prompt ends with the no-text instruction
- No em dashes anywhere in the copy
