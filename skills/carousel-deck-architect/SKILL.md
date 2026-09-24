---
name: carousel-deck-architect
description: Turns any topic, idea, transcript, rough note, or content brief into a complete publish-ready Instagram or LinkedIn carousel in ONE shot, with per-slide copy plus a per-slide Gemini image generation prompt and the overlay design spec. Use this skill aggressively whenever someone wants a carousel, a slide deck for social, an Instagram carousel, a LinkedIn carousel, a swipe post, a content carousel, or asks to "turn this into slides", "make a carousel about X", "build a carousel from this podcast", "I need image prompts for each slide", "give me slide copy and visuals", "design a carousel deck", "write a swipe post", "carousel from this transcript", "turn this idea into a carousel", or shares a topic and asks what the slides should say and look like. Also trigger when someone wants image generation prompts for a multi-slide social asset, or asks how a carousel should be structured, sequenced, or designed. Produces copy, Gemini prompts, and overlay specs in a single pass without asking clarifying questions.
---

# Carousel Deck Architect

Turn raw input into a finished carousel in one pass: the copy, the image prompt for each slide, and the design overlay spec.

The person using this skill cannot generate images from here. They take each Gemini prompt to Gemini, generate the plate, then composite type and overlay devices in Canva or Figma. So the output has to be complete and precise enough to hand straight to a generator and a designer with no follow-up questions.

## The prime directive: single shot

Do not ask clarifying questions. Read the input, infer what is missing, state the assumptions in one short line at the top, and produce the whole deck.

Infer defaults when not given:
- **Slide count**: 8 if not stated. Range 6 to 12.
- **Platform**: Instagram, 1080x1350, 4:5 vertical.
- **Closing action**: a comment-to-DM trigger word derived from the topic.
- **Voice**: match the tone of the input. If the input names a person or brand with a voice or brand-style skill available, read and apply it before writing copy.

## The seven laws

**1. Reverse from the CTA.** Write the last slide first, in your head. Then write the payoff slide so it pre-scripts that exact ask. Everything upstream exists to make the ask feel earned rather than pitched. A carousel that does not close is just content.

**2. Build a spine, not a list.** Every slide must end owing the next one a reason to swipe. Test it: cover any slide. If the next one still makes sense without it, the spine is broken and the order needs rework. Assign zones: Setup (first 2), Tension (middle), Payoff (last 2).

**3. Vary the rhythm.** Change the visual weight every slide so the swipe never goes flat. Map a temperature strip (warm, cool, hot, neutral) and a density strip (sparse, dense) across the deck before choosing any image. No three consecutive slides share a temperature. Include at least one deliberate rest beat: a near-empty slide with no photograph.

**4. Gemini renders the finished slide, text included.** The prompt is a design brief, not a photo request. Lift every piece of copy out of the description into an explicit numbered TEXT TO RENDER list with the exact string in quotes, its position, and its relative size. Copy buried in prose is what garbles. Budget four to five text elements per slide, cap any element at roughly twelve words, and close every prompt with the spelling constraint. Full protocol in `references/gemini-prompting.md`. If a slide's text refuses to render after three attempts, fall back to prompting the plate alone and setting type over it in Canva, but treat that as the exception.

**5. Stay literal, then decorate.** The input's specifics are the value. Keep every concrete number, timeframe, platform name, tool name, and asset type the source provides, and surface them in the copy where the reader can see them. A metaphor may sit on top of the specifics to give the deck a visual identity. It must never replace them. Test each slide: if it could have been written without reading the input, it is wrong and needs rewriting against the source.

**7. The image must carry the mechanism, not pun on the words.** Pick the visual from what the slide actually does, never from the trigger word or the headline's vocabulary. Harvest to a farmer is a pun and it teaches the reader nothing. A prism splitting one beam into thirty rays is the mechanism itself: everything that comes out was already inside what went in. Run the metaphor test on every slide before writing the prompt: name the mechanism in one sentence with no topic words in it, then find a picture of that sentence. Also check the deck for visual repeats. If two slides share a setting, one of them is wrong, even when both images are individually good.

**6. Plain language on every slide.** A reader landing on slide 5 with no context must understand it immediately. Name each beat in plain words tied to the actual topic, such as "Cut the long video first" or "Pull 10 to 15 reels", not abstract single nouns. Abstract beat names like "the Mirror" or "the Split" work only when the deck's subject is itself abstract, such as storytelling craft. On a practical how-to topic they read as cryptic and lose the reader. Numbers in headlines are the strongest option: concrete, scannable, and they promise a specific payoff. A reader must be able to follow the whole process by reading only the headlines in order.

## Workflow

1. **Read the input and extract the argument.** Find the one belief the reader holds that this content overturns. That belief flip is the deck's engine. If the input is long (a transcript, an article), pull the 6 to 8 strongest transferable lessons and discard the rest.

2. **Set the CTA.** Pick the trigger word: short, uppercase, memorable, topic-linked. Decide what the reader receives.

3. **Assign beats.** Give every slide one job and one plain-language name. For practical or instructional topics, name the beat as the action or the number: "Record one hour", "Cut 10 to 15 reels", "Post each reel three times". For abstract or craft topics, the "the [Noun]" form is available, but only where the noun is self-explanatory in context. Before moving on, read the headlines back in order with nothing else. They should read as a coherent process. If they read as a poem, rewrite them.

4. **Map the rhythm strip** across all slides before touching visuals.

5. **Route each beat to an image archetype.** Read `references/archetypes.md` for the thirteen plates, the overlay device library, and the beat-to-archetype routing table. Never repeat an archetype within three slides. Reserve the creator-face archetype for the CTA slide only.

6. **Write the copy** using the type hierarchy in `references/design-system.md`.

7. **Write the Gemini prompt** for each slide using the block template in `references/gemini-prompting.md`: TEXT TO RENDER, TYPOGRAPHY, IMAGERY, COLOUR, LAYOUT, CONSTRAINT. Trim the copy to the text budget before writing the prompt.

8. **Output every slide in the block format below.**

9. **Close with the assembly and caption pack**: the swipe order, the export spec (1080x1350, centre-crop to 4:5, PDF for LinkedIn document posts and separate PNGs for Instagram), the platform captions, the pinned first comment, and the production checklist.

## Output format

Open with one line of assumptions, then a compact deck-at-a-glance table (slide, beat, archetype, temperature), then every slide in this exact block:

```
SLIDE [n] of [N]   |   ROLE: [cover / beat / rest / CTA]
==========================================================
BEAT: the [Noun]
JOB: [what this slide does to the reader, one line]

--- COPY ---
Kicker:      [ONE / TWO / ... or blank]
Headline:    [the display line, note serif vs sans split]
Thesis:      [6 to 9 words, the bold line]
Support:     [max 3 lines]
Punch box:   [the one line built to be screenshotted]
Accent word: "[single word in the accent colour]"

--- IMAGE PLATE ---
Archetype:      [A1 to A13, name]
Negative space: [NS-CODE]
Dominant hue:   [name + hex]

Text-magnet check: [none, or the object and how it is handled]

GEMINI PROMPT:
[opening suppression clause, then one flowing paragraph containing all
seven components, then the closing suppression clause. Both clauses are
mandatory and verbatim from references/gemini-prompting.md section 3]

--- OVERLAY (built in Canva or Figma) ---
Device:      [one device only]
Type depth:  [what sits behind the subject, what sits in front]
Placement:   [where each copy block lands]

--- RHYTHM ---
Temperature: [warm / cool / hot / neutral]
Density:     [sparse / dense]
Contrast:    [dark type on light | light type on dark]
```

Close with:
- The **caption** for the post, plus 5 to 8 hashtags.
- The **pinned first comment** repeating the trigger word.
- The **production checklist** from `references/design-system.md`.

## Copy rules

Write display copy, not paragraphs. Every line has to survive being read at arm's length on a phone in under two seconds.

- Thesis lines run 6 to 9 words. Support lines run under 12 words each.
- One idea per slide. If a slide has two ideas, it is two slides.
- Second person. Speak to one reader, not an audience.
- Keep the source's numbers and proper nouns intact. "10 to 15 reels" beats "lots of clips". "Instagram, YouTube Shorts, TikTok" beats "every platform". Numbers are what make advice feel usable.
- Every headline must stand alone. If it needs the previous slide to make sense, rewrite it.
- Specific over general. "You saved 200 carousels and posted none of them" beats "you procrastinate".
- Every slide carries exactly one punch box: the line built to be screenshotted and reshared.
- The turn slide, where the lesson becomes theirs, gets the sharpest line in the set. Never "here is what I learned". Always "so you can ___".
- Share from a scar, healed and with the lesson, never from a wound that is still bleeding. If a story has no transferable lesson yet, it is a journal entry and does not belong in the deck.

## House rules

- **No em dashes anywhere.** Use a comma, a full stop, or a colon.
- No "not X, it's Y" construction more than once per deck.
- No emoji in slide copy.
- The accent colour appears eight times or fewer across the whole deck. Rationing is what makes the CTA read as a command instead of decoration.

## Reference files

Read these as needed rather than all at once:

- **`references/archetypes.md`** — the thirteen image archetypes, the overlay device library, and the beat-to-archetype routing table. Read this at step 5, every time.
- **`references/design-system.md`** — type scale, colour grading recipe, cover composition anatomy, CTA slide anatomy, and the production checklist. Read this at step 6.
- **`references/gemini-prompting.md`** — the seven-component prompt formula, negative space codes, worked examples, and the common failure modes. Read this at step 7, every time.
