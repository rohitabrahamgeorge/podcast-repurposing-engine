# Gemini Prompting for Fully Rendered Slides

Gemini renders the finished slide including all typography. The prompt is a design brief, not a photo request. Getting text to render correctly is the whole game.

Contents:
1. The text rendering protocol
2. The prompt template
3. Text budget and hierarchy
4. Negative space codes
5. Worked examples
6. Failure modes and repair

---

## 1. The text rendering protocol

Generators garble text when the prompt buries copy inside prose. The fix is to lift every piece of copy out of the description and into an explicit numbered list with position and size stated for each line.

**The five rules that decide whether text renders cleanly:**

**Rule 1: quote the copy verbatim in a numbered list.** Never write "a headline about recording once". Write `2. HEADLINE, very large, upper third: "Record 30 to 60 minutes. Once."` The model reproduces what it can see in quotes.

**Rule 2: state capitalisation exactly as you want it.** Write the string the way it should appear. If a word is uppercase in the render, type it uppercase in the prompt. Add "reproduce capitalisation exactly as written" to the constraint line.

**Rule 3: budget the text.** Four to five text elements per slide is the reliable ceiling. Six or more and the smallest ones degrade first. Long support paragraphs are the most common cause of garbling, so cap any single element at roughly twelve words.

**Rule 4: give each element a position and a relative size.** Top-left, upper third, spanning the full width, lower band, bottom-left. Relative sizes: very large, large, medium, small. Absolute pixel sizes are ignored, relative hierarchy is respected.

**Rule 5: close with a spelling constraint.** End every prompt with:

> Render only the text listed above, spelled exactly as written, with capitalisation reproduced exactly. No additional words, labels, captions, watermarks or logos anywhere in the image.

**Typeface language.** The model does not load font files, but it responds well to described character. Use: "a heavy condensed grotesque sans, all caps, tightly tracked" or "a high-contrast display serif with sharp thin strokes, italic". Naming a famous face as a style cue helps: "in the style of Anton" or "in the style of a Didone serif".

---

## 2. The prompt template

Write every slide prompt in this exact block structure. The structure is what makes the text land.

```
Create a vertical 4:5 Instagram carousel slide, 1080x1350.

TEXT TO RENDER, exactly as written:
1. [POSITION], [SIZE], [STYLE]: "[verbatim copy]"
2. [POSITION], [SIZE], [STYLE]: "[verbatim copy]"
3. [POSITION], [SIZE], [STYLE]: "[verbatim copy]"
4. [POSITION], [SIZE], [STYLE]: "[verbatim copy]"

TYPOGRAPHY: [the two-font system, weights, tracking, case, line height,
the hard left margin, and the accent word set in display serif italic
with a hand-drawn brush underline swash]

IMAGERY: [the photographic or rendered scene, one subject, atmosphere,
lighting direction and quality]

COLOUR: [dominant hue, the grade recipe, the single accent colour and
which word carries it]

LAYOUT: [where the imagery sits, which region stays clear for the text,
which text overlaps the subject and which sits clear of it]

CONSTRAINT: Render only the text listed above, spelled exactly as written,
with capitalisation reproduced exactly. No additional words, labels,
captions, watermarks or logos anywhere in the image.
```

---

## 3. Text budget and hierarchy

Field-tested on a full eight-slide deck. Current generators handle more text than older guidance assumed, including multi-line support paragraphs, provided every element is quoted and positioned explicitly.

| Elements | Reliability | Use for |
|---|---|---|
| 1 to 3 | Very high | Cover, CTA, rest beat |
| 4 to 6 | High, the working range | Standard teaching slide |
| 7+ | Moderate, check the smallest element first | Split into two slides |

A support block of three or four short lines renders cleanly when written as separate quoted lines rather than one long sentence. Break copy at natural line ends inside the quotes and the generator respects the breaks.

**Standard teaching slide, six elements:**
1. Kicker, top-left, small caps, followed by a thin rule extending right to about 70 percent of the width
2. Headline, upper third, very large, two or three lines
3. One-line thesis beneath it
4. Support block, three or four short lines, light weight, generous line spacing
5. Punch line inside a solid rounded box
6. Optional pre-script line beneath the box on the payoff slide

**Long lists** such as five asset names render best as separate stacked pill rows, each holding one or two words.

## 3b. The locked motif kit

These four motifs repeat on every slide and are what make eight separately generated images read as one deck. Write them into every prompt.

**The kicker rule.** Small caps kicker top-left, followed by a thin horizontal rule extending right to roughly 70 percent of the frame width.

**The accent swash.** The single accent word is set in high-contrast display serif italic, inside an otherwise heavy sans headline, with a rough hand-drawn brush underline beneath it. This is the deck's signature. One per slide.

**The punch box.** A solid rounded rectangle holding the quotable line, inverted against the slide: white box with black text on dark slides, black box with white text on light slides.

**The hard left margin.** All text left-aligned to roughly 6 to 8 percent of frame width, on every slide without exception.

## 4. Negative space codes

Declare one per slide, then state it in the LAYOUT block so the imagery leaves room for the type.

| Code | Layout | Use for |
|---|---|---|
| NS-TOP | Upper 35% clear, subject in lower two thirds | Hero headline slides |
| NS-LEFT | Subject right, left column clear | Dense copy slides |
| NS-RIGHT | Subject left, right column clear | Stacked lists |
| NS-BOTTOM | Subject upper two thirds, lower band clear | CTAs, closing lines |
| NS-CENTER | Subject at the edges, centre clear | A single punch line |
| NS-FULL | Near-empty frame, texture only | Rest beats |

---

## 5. Worked examples

### Example A, a standard teaching slide

```
Create a vertical 4:5 Instagram carousel slide, 1080x1350.

TEXT TO RENDER, exactly as written:
1. Top-left, small, all caps, widely letter-spaced: "STEP 03"
2. Upper third, very large, heavy sans, two lines, left-aligned:
   "Pull 10 to 15 reels from 40 minutes."
3. Below the headline, medium, regular weight, one line:
   "Every complete thought is a clip."
4. Lower third, medium, white text inside a solid black box:
   "Stop making content. Start cutting it."

TYPOGRAPHY: headline in a heavy grotesque sans, tight line height, left
aligned to a hard margin at 8 percent of the frame width. Kicker in the same
sans, small caps, letter-spacing wide. All text dark charcoal except the box.

IMAGERY: wide environmental photograph of a single small figure in a dark coat
standing beside an enormous stack of identical smooth grey concrete blocks
rising out of frame, figure dwarfed with their back to camera, fine dust
hanging in the air, flat soft overcast daylight from above.

COLOUR: dominant cool desaturated grey, shadows lifted and tinted cool blue
rather than crushed to black, highlights soft and muted with no strong white,
fine grain over the whole frame. Single accent colour hot orange #F15A22 used
only on the numerals "15" in the headline.

LAYOUT: NS-TOP. The entire upper third is flat pale empty sky holding the
kicker and headline. The block stack and figure sit in the lower two thirds.
The black punch box sits over the dusty floor at the bottom left.

CONSTRAINT: Render only the text listed above, spelled exactly as written, with
capitalisation reproduced exactly. No additional words, labels, captions,
watermarks or logos anywhere in the image.
```

### Example B, a cover slide with maximum type

```
Create a vertical 4:5 Instagram carousel slide, 1080x1350.

TEXT TO RENDER, exactly as written:
1. Very top, small, all caps, three items spread across the width:
   "AUG 2026" and "@GROWTHNOTES" and "CONTENT SYSTEMS"
2. Upper area, small lowercase sans directly above the hero word:
   "the content"
3. Hero word, enormous high-contrast display serif, spanning the full
   frame width and clipping both edges: "harvest"
4. Lower third, large heavy sans, two lines:
   "One hour of talking. Thirty assets."

TYPOGRAPHY: hero word in a high-contrast Didone-style display serif, lowercase,
letters large enough to run past both frame edges. All other text in a heavy
grotesque sans. White type throughout.

IMAGERY: medium portrait photograph of a nineteenth century field labourer in a
coarse linen shirt and wide straw hat, holding a sleek modern black boom
microphone at his side the way he would hold a scythe, standing at the edge of
a cut wheat field with chaff drifting in the air, low golden hour sun raking
hard from camera left.

COLOUR: dominant warm harvest gold against a cool slate sky, shadows lifted and
tinted warm gold, highlights soft and slightly blown along the hat brim, fine
grain. Accent hot orange #F15A22 on the word "Thirty" only.

LAYOUT: NS-TOP. Open sky fills the upper third. The hero word sits behind the
straw hat so the brim overlaps its lower edge. The bottom two lines sit in
front of the wheat.

CONSTRAINT: Render only the text listed above, spelled exactly as written, with
capitalisation reproduced exactly. No additional words, labels, captions,
watermarks or logos anywhere in the image.
```

---

## 6. Failure modes and repair

| Symptom | Cause | Repair |
|---|---|---|
| Letters garbled or invented | Too many text elements | Cut to four. Move the support line into the caption instead |
| Wrong capitalisation | Case not stated | Type the string exactly as it should appear and add the capitalisation clause |
| Text sits on a busy area | LAYOUT block missing or vague | Name the NS code and say which region stays clear |
| Extra invented words appear | No closing constraint | Add the constraint line verbatim |
| Headline too small | No relative size given | Say "very large, spanning most of the frame width" |
| Small text unreadable | Element ranked lowest and shrunk | Promote it to medium or delete it |
| Accent colour applied everywhere | Accent not scoped | Name the exact word that carries it |
| Deck looks inconsistent | Grade recipe varied | Reuse the COLOUR block structure across all slides, change only the hue |

**Composite fallback.** If a slide's text will not render after three attempts, prompt the same slide with the TEXT block removed and the LAYOUT block kept, then set the type over the plate in Canva. Reserve this for the one or two slides that resist, not the whole deck.
