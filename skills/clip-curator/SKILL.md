---
name: clip-curator
description: Turns a "{{SHOW_NAME}}" transcript into FOUR fully built Instagram reels using the Triple Hook Framework of Context, Lean and Snapback. Each reel ships with the exact chosen transcript and timestamps, a non-sequential assembly map, a timed on-screen text schedule including the comment CTAs, and a full editor build sheet. Names exactly one reel as the trial pick and staggers the rest. Use whenever the user shares a transcript and wants clip ideas, reel picks, viral moments, shorts candidates, the trial pick, hooks, on-screen text, or an editor brief. Trigger on "find the best clips", "what should we cut for reels", "pull viral moments from this episode", "clip this transcript", "build the reels", "which one goes to trial", "build the reel brief", or "editor brief for this clip". Enforces the rules learned from live Instagram trials, meaning one trial reel at a time and never a recut of a cut that already ran. Trigger aggressively for any short-form clip or reel request.
---

# Clip Curator

> **Show profile.** This skill uses placeholders such as `{{SHOW_NAME}}`, `{{HOST_NAME}}`, `{{BRAND}}` and `{{AUDIENCE}}`. They are normally filled once by running `setup.sh` from the repo root. If any `{{...}}` placeholder is still unfilled when this skill runs, ask the user for those values once at the start, then use the answers everywhere. Never output a raw placeholder.

Four reels per episode, each built to the point where the editor can cut it without asking a follow-up question. Then one of the four is named as the trial reel and the other three are scheduled.

Show: "{{SHOW_NAME}}". Host: {{HOST_NAME}}. Brand: {{BRAND}}. Audience: {{AUDIENCE}}.

## The one-shot rule (read this before anything else)

Instagram trial reels give you one attempt per piece of content. Near-duplicate uploads get flagged, and a re-edited version of a cut that has already run is very hard to get pushed through distribution. There is no publish, watch it flop, recut, retry loop.

What follows from that:

- **Four reels are produced. Exactly one of them enters Trial.** The others are live posts or later trial slots on different days, never variants of the trialled cut.
- **No variant testing, ever.** Do not propose two cuts of the same moment, two hook options to try live, or an alternate opening to test against itself. Every choice is made inside this skill, before anything is edited.
- **Four distinct moments, not four angles on one moment.** No shared timestamps, no restating the same claim.
- **Each build sheet has to be right the first time.** Ambiguity in the brief becomes a wasted slot.
- **Never recut a reel that has already run.** A trimmed hook or a swapped text card is not materially different content. A flop stays a flop and becomes benchmark data, or it gets redirected to LinkedIn or YouTube Shorts where warm context exists.

When naming the trial pick, say plainly why it beat the other three.

---

## THE TRIPLE HOOK FRAMEWORK

Every reel opens on three beats in this order: **Context, then the Lean, then the Snapback.** The viewer rapidly buys into the context, leans toward one thing out of curiosity, then gets snapped back in another direction. All three land inside roughly the first twelve seconds. A reel that skips one of them does not ship.

### Beat 1: Context (0:00 to ~0:02)

Viewers only watch content where they have a vested interest in the topic. The first line has to establish what the video is about. Nothing else earns attention first.

**Say it. Show it. Write it.** Context can be established in the audio, the visuals, or the on-screen text. **Ideally all three at once, on the first frame.** Every build sheet must state how context lands in each of the three carriers:

- **Voiceover / spoken:** the first thing heard names the topic.
- **On-screen text:** the text hook names the topic in plain words.
- **Visuals:** a topic label, an artifact, a screenshot, or a lower-third subject tag.

**Hard rule: context lands in the first half of the first sentence.** Delaying it even to the back half of that sentence dramatically increases the skip rate. If the chosen opening line buries the topic behind a clause, either find a different line or put the topic in the on-screen text and the visual so the viewer has it before the audio arrives.

Cold-audience test: someone who has never heard of the guest, the show, or {{BRAND}} must know what this is about within two seconds.

### Beat 2: The Lean (~0:02 to ~0:06)

This is where most reels are lost. The job is to make the viewer curious in a specific direction so they lean in on the context and actively want to hear more. This is the curiosity loop everyone talks about, and it only opens if the viewer has already accepted the context.

**Three ways to make them lean. Pick one and name which you used:**

| # | Lean type | What it does |
|---|---|---|
| 01 | **Shock** | Something interesting, shocking or unexpected about the topic |
| 02 | **Pain Point** | A specific pain they have, or a benefit they want, named precisely |
| 03 | **Proof** | A stat, number or result that validates the claim that is about to land |

Whatever you pick, the viewer must **lean in instead of opting out**. Vague intrigue is not a lean. If the beat does not make a specific person think "that is me" or "wait, how", it has failed.

### Beat 3: The Snapback (~0:06 to ~0:12)

This is where the money is made and almost nobody does it. To catch a fish you get the hook in its mouth while it swims one way, then you yank the line in another direction. The Snapback works the same way.

**Say something that pulls the viewer away from the direction they were leaning and snaps them back down another path.** The Lean set them up to expect one answer. The Snapback contradicts it, reverses it, or reveals that the obvious answer is the wrong one.

Rules:
- The Snapback must **contradict the direction of the Lean**, not merely escalate it. A bigger number is not a Snapback. "The number does not matter" is.
- It is a **verbatim line from the transcript**, and it may be lifted non-sequentially from anywhere in the episode.
- Pair it with a **second on-screen text card** so the reading hook refreshes at the exact moment the direction changes.
- State explicitly in the build sheet which direction the Lean pointed and which direction the Snapback pulls. If you cannot name both directions in a sentence each, there is no Snapback and the reel needs rebuilding.

### Writing the on-screen text hook

The text hook is the Context carrier and usually the Lean carrier too. It is the only thing a sound-off viewer gets.

- Long enough to take **just over two seconds to read**. That dwell is deliberate. A three-word sticker gets scrolled. Six to twelve words is the working range.
- Topic first, so context lands before the curiosity does.
- Fully comprehensible to a cold viewer with zero context.
- State the **result or the obstacle**. Withhold the method.
- Preferred pattern: **How to [specific outcome] without [specific obstacle]**. A number carries more weight than an adjective.
- Banned: "SECRETS", "THE BEST TOOL?", all-caps curiosity gaps, vague question hooks, and any promise the footage does not deliver.
- POV framing is allowed but flag it, since on a B2B account it can read as generic creator content.

Give three options per reel and mark one as recommended.

---

## THE SCRIPT STRUCTURE

The Triple Hook governs the opening. This governs the whole reel. Context, Lean
and Snapback all sit inside beat 1 below. Everything after it is new territory,
and the two beats most reels are missing are the lock-in zone and the re-hooks.

| # | Beat | Job |
|---|---|---|
| 1 | **Hook** | Context, Lean, Snapback. See the Triple Hook Framework above. |
| 2 | **Lock-in zone** | Two to three sentences immediately after the hook that convert the reversal into a reason to stay. |
| 3 | **Body block 1** | The first substantive chunk. Delivers on the hook's promise. |
| 4 | **Re-hook 1** | Short beat that reopens a loop before attention drops. |
| 5 | **Body block 2** | The second chunk. Goes deeper or wider than block 1. |
| 6 | **Re-hook 2** | Second loop reopen. |
| 7 | **Body block 3** | Optional. Only on longer reels with the material to carry it. |
| 8 | **Close** | Optional. The transferable principle. |
| 9 | **CTA** | On-screen comment CTA with an aligned payload. |

### Beat 2: The lock-in zone

The most underrated part of the structure and the one this skill previously had
nothing for. The Snapback reverses the viewer's direction. The lock-in zone tells
them why to stay for the new direction. Without it the reel jumps from hook
straight into evidence and the viewer leaves during the setup.

Two to three sentences. It must do at least two of these three:

- **Name who this is for.** A specific role, stage or situation, so the right viewer self-identifies and the wrong one leaves early rather than half-watching.
- **State what they walk away with.** The concrete thing, not a vague benefit.
- **Raise the stakes.** What it costs to keep doing it the current way.

In a podcast clip this is rarely adjacent to the hook. Lift it from wherever the
speaker names their audience or frames the cost. {{HOST_NAME}}'s setup questions are
often the cleanest lock-in material in the whole episode.

### Beats 4 and 6: Re-hooks

Short beats, one or two sentences, placed where attention decays. They are not
Snapbacks. A Snapback reverses direction once. A re-hook reopens a loop inside
the direction the reel is already travelling.

What works as a re-hook, in descending order of strength:

1. A number or result that has not appeared yet.
2. A question the speaker or host poses that the next block answers.
3. A "but here is the thing" turn that complicates what was just said.
4. A named objection the speaker then handles.

**Every re-hook gets its own on-screen text card**, fired on the line. That is
what the card schedule is for, and it is also what stops long talking-head
stretches. If a body block runs longer than about 12 seconds with no re-hook and
no visual change, the structure has failed.

### Multi-segment assembly is expected here

A podcast conversation almost never contains all nine beats in one contiguous
passage. Building this structure means pulling from two, three or more places in
the transcript, and that is correct rather than a compromise. A re-hook lifted
from minute 34 into a block sourced at minute 12 is a normal move.

The cost is that every additional lift raises the seam risk, so the six
non-sequential checks below matter more here than anywhere else in this skill.
Run them against the assembled script as one continuous read, not beat by beat.

### Runtime tiers

The full structure does not fit in 30 seconds. Match the beat count to the length:

| Runtime | Beats to build |
|---|---|
| 30 to 45s | Hook, Lock-in, Body 1, Re-hook 1, Body 2, CTA |
| 45 to 75s | Hook, Lock-in, Body 1, Re-hook 1, Body 2, Re-hook 2, Close, CTA |
| 75 to 90s | Full structure including Body 3 |

Never drop the lock-in zone to save time. Drop Body 3 first, then Re-hook 2,
then the Close. Under 30 seconds the comment CTA also comes out.

### The CTA payload is episode-level

Because the keyword is the guest's first name and is shared across all four reels,
the payload is shared too. One keyword can only trigger one fulfilment. A single
episode therefore has a single payload, not one per reel.

Order of preference for that episode payload:
1. A lead magnet built from the episode, where one exists.
2. The relevant playbook, template or asset the guest names on tape.
3. The episode link, as the fallback and the usual default.

State in the build sheet which of the three the episode uses. If you recommend a
lead magnet that does not exist yet, say so plainly rather than implying it does.

Where a per-reel aligned magnet would clearly outperform the shared payload, say so
in that reel's build sheet and recommend the keyword override above. Do not
silently assign different payloads to the same keyword.

---

## Phase 1: Shortlist

Read the whole transcript. Extract 12 to 20 moments that could each carry a 30 to 75 second reel.

Select segments that are one or more of: controversial, myth-busting, unconventional, shocking, funny, highly educational, rich in practical or strategic value, intriguing, or likely to trigger discussion and shares.

Selection rules:
- Runtime of 30 to 75 seconds when spoken. Under 30 seconds drops the mid-roll comment CTA.
- **Must contain a usable Snapback.** A segment where the speaker only builds in one direction has no reversal to yank against and will not survive the framework. This is the single biggest filter.
- **Must have enough material for the script structure.** A moment that yields a hook and one block but no lock-in material and no re-hook candidates is a LinkedIn clip, not a reel. Check the rest of the episode for liftable lock-in and re-hook beats before committing a clip.
- Must land with a cold non-follower audience. Trial reels reach zero followers, so context-dependent moments die.
- Must sit on-niche for a {{NICHE}} account. Gear talk, generic productivity and lifestyle tangents do not belong here.
- Prefer moments where something is visible. Winners show a thing. Losers show a face making a vague claim.

For each clip return: virality score out of 10, timestamp start and end, clip title, the verbatim starting and ending line, a one-line cold-audience note, **a one-line note on where the Snapback would come from**, and **a one-line note on where lock-in and re-hook material would be lifted from**.

Order highest score first. Keep this phase tight, it is triage and not the deliverable.

## Phase 2: Select the four

Name the four reels. For each, one line on what it does that the clips below it do not.

Coverage rules:
- Four distinct topics, no overlapping timestamps.
- At least one hard-tactical teardown the viewer could run this week.
- At least one contrarian or myth-busting take a stranger will argue with.
- Weight toward claims a cold viewer can judge without knowing the guest.

Then flag two reserve clips for LinkedIn or YouTube Shorts.

---

## Phase 3: Build sheets

Produce a complete build sheet for **each of the four reels**, in the exact format below. Every block is mandatory.

**The Script block is the spine.** Each reel is written out as one ordered run of
numbered beats, in the order the viewer hears them, and every beat carries its own
source timestamp, verbatim line and timing. Do not describe the same beats a
second time elsewhere in the sheet. Do not abbreviate the selected transcript
block, and do not leave any on-screen text timing unspecified.

### Non-sequential assembly rules

Pulling lines out of order is allowed and usually required, since the Snapback rarely sits next to the Lean in the raw conversation. Every borrowed line must pass all six checks:

1. **Standalone sense.** No dangling pronouns, no "like I said", no "that", "this" or "they" pointing at something not in the cut.
2. **Continuous read.** A first-time viewer must never sense a jump.
3. **Meaning preserved.** If moving a line makes the guest appear to claim something they did not claim in context, drop the line. Never engineer a stronger clip by stripping a qualifier.
4. **Dwell earned.** Each move must either delay a payoff or raise a question the next beat answers.
5. **Clean boundaries.** Cut on sentence boundaries, never mid-clause.
6. **Logical arc.** The full script structure in order: hook, lock-in, body, re-hook, body, re-hook, close. The reel resolves. It does not trail off.

Run these six checks against each assembly and state the result in one line before printing the sheet.

### On-screen text beats

| Beat | When | Required |
|---|---|---|
| Context text hook | 0:00, live on the first frame | Always |
| Snapback card | on the Snapback line | Always |
| Re-hook 1 card | on the re-hook 1 line | Always |
| Re-hook 2 card | on the re-hook 2 line | On 45s+ reels |
| Comment CTA | roughly 55 to 65 percent through | **Required whenever the reel runs over 30 seconds** |
| End CTA | final 2 to 3 seconds, over the last spoken beat or a held frame | Always |

Every card gets an **in time and an out time**. Never write "mid-roll" without a timecode.

**Comment CTA.** Format: `Comment "KEYWORD" for [the asset]`.

**The keyword is always the guest's first name, in uppercase.** Jordan Lee gives
`JORDAN`. It is the same keyword on every reel from that episode, and the same on the
mid-roll and end cards. Do not invent topic keywords, and do not vary the keyword
between reels in a set.

Two exceptions:
- **Name collision with an earlier guest.** Check whether a previous episode already
  used that first name. If so, use first name plus last initial, `JORDANL`.
- **A reel driving a specific lead magnet.** If one reel exists to deliver an asset
  the others do not, it may carry its own keyword. Flag the override in the build
  sheet and say why, because it creates a second fulfilment path.

**End CTA.** Instagram cannot take a clickable in-caption link, so a comment CTA is
the delivery mechanism and "link in bio" is the backup path. If the episode link is
unknown, say so rather than inventing a URL.

### CTA card spec

Every build sheet must state, for each CTA card: the in time, the out time, the
screen position, and the exact copy. Never write "mid-roll" or "lower third" without
those four. The editor should not have to make a single decision here.

**Mid-roll CTA.** Required only when the reel runs over 30 seconds.
- **In:** 55 to 65 percent through the runtime, landing after a payoff beat, never
  interrupting the Snapback or a re-hook line.
- **Out:** in time plus 4 to 5 seconds. Long enough to read and act on, short enough
  that it clears before the next beat.
- **Position:** lower third, sitting at roughly 65 to 70 percent of frame height.
  Clear of the bottom 25 percent, which Instagram's own caption, handle and audio
  strip cover, and clear of the right 15 percent where the action buttons sit.
- **Never** stack it in the same third as a re-hook card that is still on screen.

**End CTA.** Always present.
- **In:** runtime minus 4 seconds.
- **Out:** final frame, held. It must still be on screen when the loop restarts.
- **Position:** centre, at roughly 45 to 55 percent of frame height. Centre rather
  than lower third, because the end card competes with nothing and the eye is
  already mid-frame.

**Copy.** Two lines, both cards:

```
Line 1:  Comment "JORDAN" for the full episode + playbook
Line 2:  (end card only)  Or grab the link in bio
```

Substitute the guest's first name for JORDAN. Name both assets explicitly when two are
being sent, because a viewer weighing whether to comment is deciding against the
value of what arrives. One asset is a link, two is a reason.

**Styling.** The keyword carries in the accent colour, inside straight quote marks,
uppercase. People have to type it exactly, so it must be unmistakable which word is
the trigger. The rest of the line stays in the body weight.

Keep all on-screen text inside the safe area, clear of the bottom caption overlay and
the top UI, and never colliding with burned captions.

### Build sheet format

Print exactly this structure, once per reel, four times.

```
REEL [n] BUILD SHEET
Episode: [Guest], [Role] at [Company]
Clip: [title]   Target runtime: [seconds]
Source range: [HH:MM:SS] to [HH:MM:SS]  (plus any lifted timestamps)
Angle: [one line on what this reel argues]
Comment CTA required: [yes / no, based on the 30 second rule]

--- SELECTED TRANSCRIPT ---
The full verbatim transcript of every segment used, in the order it appears in
the ORIGINAL episode, each block headed by its exact timestamp and speaker.
Reproduce it in full. This is what the editor searches against to find the cut.
Mark any line that will be lifted out of order with [LIFTED TO BEAT n].

[HH:MM:SS] Speaker: "..."
[HH:MM:SS] Speaker: "..."   [LIFTED TO BEAT 3]

--- TEXT HOOK OPTIONS ---
1. [option]
2. [option]
3. [option]
Recommended: [n], because [one line]

--- THE SCRIPT ---
Runtime tier: [30-45s / 45-75s / 75-90s]
Beats built: [list, in order]
Segments used: [count of distinct source ranges pulled from]

Write the reel as ONE ordered script, beat by beat, in the order the viewer hears
it. This block is the spine of the build sheet. Do not describe the same beats
again anywhere else in the sheet.

BEAT 1 — HOOK: CONTEXT              0:00-0:0X    source [ts], sequential/lifted
  Spoken:   "[verbatim line]"
  Text:     "[on-screen text hook]"
  Visual:   [what carries the topic on screen]
  Topic lands at: [word number in the first sentence. Must be first half.]

BEAT 2 — HOOK: LEAN                 0:0X-0:0X    source [ts], sequential/lifted
  Type:     [Shock / Pain Point / Proof]
  Spoken:   "[verbatim line]"
  Viewer now leans toward: [one sentence]

BEAT 3 — HOOK: SNAPBACK             0:0X-0:1X    source [ts], sequential/lifted
  Spoken:   "[verbatim line]"
  Text card: "[copy]"
  Pulls them toward instead: [one sentence]
  Reversal check: [confirm this contradicts beat 2's direction rather than escalating it]

BEAT 4 — LOCK-IN ZONE               0:1X-0:2X    source [ts], sequential/lifted
  Spoken:   "[verbatim, 2 to 3 sentences]"
  Does:     [which two of: names who it is for / states the takeaway / raises the stakes]

BEAT 5 — BODY 1                     0:2X-0:3X    source [ts], sequential/lifted
  Spoken:   "[verbatim]"
  Delivers: [what the hook promised, in one line]

BEAT 6 — RE-HOOK 1                  0:3X-0:3X    source [ts], sequential/lifted
  Type:     [new number / question / but-here-is-the-thing / named objection]
  Spoken:   "[verbatim]"
  Text card: "[copy]"
  Loop it reopens: [one sentence]

BEAT 7 — BODY 2                     0:3X-0:4X    source [ts], sequential/lifted
  Spoken:   "[verbatim]"
  Delivers: [one line]

BEAT 8 — RE-HOOK 2                  0:4X-0:5X    source [ts], sequential/lifted
  Type:     [...]
  Spoken:   "[verbatim]"
  Text card: "[copy]"
  Loop it reopens: [one sentence]
  [Omit on a 30-45s reel]

BEAT 9 — BODY 3                     0:5X-1:0X    source [ts], sequential/lifted
  Spoken:   "[verbatim]"
  [Omit unless 75-90s tier]

BEAT 10 — CLOSE                     1:0X-1:1X    source [ts], sequential/lifted
  Spoken:   "[verbatim]"
  Resolves on: [the transferable principle, in one line]
  [Omit on a 30-45s reel]

BEAT 11 — CTA
  Payload:  [aligned lead magnet / named asset from the episode / episode link]
  Keyword:  "[KEYWORD]"
  Why:      [one line. If the lead magnet does not exist yet, say so plainly.]

--- SCRIPT CHECKS ---
Sequential? [yes / no. If no, list which beats moved and from where.]
Assembly check: [one line confirming all six non-sequential rules pass on the
                 full continuous read, not beat by beat]
Gap check: [confirm no body block runs >12s without a re-hook or visual change]
Beat integrity: [confirm every required beat for this runtime tier is present.
                 The lock-in zone is never omitted.]

--- ON-SCREEN TEXT SCHEDULE ---
| In | Out | Card | Position | Style note |
| 0:00 | 0:03 | [context text hook] | Upper third | Sound-off readable, 2s+ read time |
| 0:0X | 0:1X | [snapback card] | Upper third | Fires on the direction change |
| 0:XX | 0:XX | [re-hook 1 card] | Upper third | Fires on the re-hook line |
| 0:XX | 0:XX | [re-hook 2 card] | Upper third | Omit on a 30-45s reel |
| 0:XX | 0:XX | Comment "KEYWORD" for [aligned payload] | Lower third | Contrast colour |
| 0:XX | end  | [end CTA]. Comment "KEYWORD" | Centre | Hold final frame |

--- VISUALS ---
[What is on screen at each beat. Name the artifact for any beat where something
can be shown rather than said. Flag talking-head stretches longer than 8 seconds.]

--- COVER FRAME ---
[which frame, and why it works as a still at feed thumbnail size]

--- CAPTION ---
[Hook line first, no preamble above it, under 125 characters.
Then 2 to 4 sentences that answer the implied question completely and work standalone.
Then a send-oriented CTA naming a specific person archetype.
Then 3 to 5 niche hashtags. Ends on the same comment keyword.]

--- ALT TEXT ---
[one line describing the visual, repeating the primary keyword]

--- ACCURACY FLAGS ---
[any figure, claim or framing not supported on camera. Write "none" if clean.]

--- EXPORT ---
1080x1920, 30fps, no editing-app watermark, audio normalised.
Burned captions across the full reel, bottom third.
First frame must already carry the context text hook.
```

## Phase 4: Release plan

```
TRIAL PICK: Reel [n] — [title]
Why it beat the other three: [two or three lines]

Day 1  Trial   Reel [n]
Day 2  Live    Reel [n]
Day 3  Live    Reel [n]
Day 4  Live    Reel [n]
```

Posting and reading rules to restate every time:

- Post the trial from the Instagram app with the Trial toggle on, not from a scheduler. Auto-share to followers off.
- One trial per day maximum. Never stack two trials from the same episode.
- Live is the default for the rest of the set.
- Read insights at 24 hours, not before, and decide by 72 hours.
- The bar to graduate is shares around 5 to 10 percent of viewers, saves around 3 to 5 percent, and any follows or profile visits above zero. Completion of 50 percent or higher under 15 seconds, 30 percent or higher over 30 seconds.
- Trials do not share a viewer pool, so only gaps of roughly 3x or more mean anything.
- If it misses, leave it. Do not recut it and do not re-trial it.

## House rules

- No em dashes anywhere in the output.
- Brand is {{BRAND}}. Show is {{SHOW_NAME}}. Host is {{HOST_NAME}}.
- Never invent metrics, revenue, funding or customer numbers. If the guest did not say it in the transcript, it does not appear in a hook, a caption or on screen.

### Externally sourced facts

A figure the guest has published themselves, in a post or page the user supplies as
a source, may be used. It is not an invention. Conditions:

1. **Never spoken.** Every spoken line in a reel is verbatim from the transcript.
   An external fact can only appear as an on-screen text card, a lower-third
   credential tag, or a line in the caption.
2. **The guest must be the source about themselves.** A third party's claim about
   the guest, or the guest's claim about someone else, does not qualify.
3. **Cite the source in the build sheet** under accuracy flags, with the link.
4. **Never contradict the audio.** If the external figure conflicts with a number
   the guest states on tape, the audio wins for anything spoken, and the card must
   either use the on-tape figure or cover a different metric entirely. Two
   conflicting numbers on the same subject must never appear in one reel.
5. Best used as **lock-in zone credential material**, where raising the stakes is
   the job and a spoken beat would otherwise be spent on it.
- Verbatim means verbatim. Filler words may be trimmed, wording may not be improved.
