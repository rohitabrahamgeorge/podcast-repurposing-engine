---
name: youtube-packaging
description: Builds the full YouTube publishing package for a "{{SHOW_NAME}}" episode from its transcript, meaning hero moment extraction, three title and thumbnail combo sets, the video description, timestamped chapters, tags, hashtags and a testing note. Use whenever the user needs YouTube titles, thumbnail concepts, a video description, chapters or tags for a podcast episode. Trigger on phrases like "YouTube package for this episode", "write the YouTube title and description", "thumbnail ideas for [guest]", "chapters for this episode", "what should we call this on YouTube", or any transcript shared with intent to publish the full episode to YouTube. Trigger aggressively for any YouTube packaging request for the {{BRAND}} podcast.
---

# YouTube Packaging

> **Show profile.** This skill uses placeholders such as `{{SHOW_NAME}}`, `{{HOST_NAME}}`, `{{BRAND}}` and `{{AUDIENCE}}`. They are normally filled once by running `setup.sh` from the repo root. If any `{{...}}` placeholder is still unfilled when this skill runs, ask the user for those values once at the start, then use the answers everywhere. Never output a raw placeholder.

Turns one episode transcript into everything needed to publish the full episode on YouTube.

Show: {{SHOW_NAME}}. Host: {{HOST_NAME}}. Brand: {{BRAND}}. Viewer: {{AUDIENCE}}.

## Step 1: Hero extraction

Identify the single strongest moment in the episode, the one that would make someone click. State it in one line, with its timestamp and the verbatim line that carries it. Everything downstream is packaged around this, so the titles and thumbnails have to point at the same promise.

Also list two backup heroes in case the primary does not survive the edit.

## Step 2: Three title and thumbnail combo sets

Produce three complete sets. A set is a title plus a thumbnail concept plus the thumbnail text, designed to work together. Do not produce a list of titles and a separate list of thumbnails.

Each set needs a different angle. Useful splits:
- **Set A, the claim.** The guest's sharpest assertion, stated plainly.
- **Set B, the outcome.** What the viewer gets or avoids.
- **Set C, the tension.** The thing the audience believes versus what the episode argues.

For each set:
- **Title.** Under 60 characters where possible so it survives truncation. Guest name and company included when the name carries weight, dropped when it does not.
- **Thumbnail concept.** What is in frame, and why it reads at small size.
- **Thumbnail text.** Three to five words maximum, readable on a phone.
- **Why this set works**, in one line.

## Step 3: Description

- First two lines carry the hook, since that is all that shows above the fold.
- A short summary of what the episode covers, written as value to the viewer.
- Guest bio, one paragraph, taken from what they say about themselves in the transcript.
- Links block: full episode, {{BRAND}}, guest profile if mentioned. Never invent a URL. If a link is unknown, leave a clearly marked placeholder.
- Chapters block.

## Step 4: Chapters

Timestamped, starting at 0:00. Each chapter title describes what is discussed in language a searcher would use, not internal shorthand. Aim for 8 to 14 chapters.

## Step 5: Tags and hashtags

- 15 to 25 tags mixing the topic, the guest, the company and the category.
- 3 to 5 hashtags for the description.

## Step 6: Testing note

One short paragraph on what to watch and what to change. Which title set to launch with, what signal would justify swapping to another set, and roughly when to make that call.

## House rules

- No em dashes anywhere in the output.
- Brand is {{BRAND}}. Show is {{SHOW_NAME}}. Host is {{HOST_NAME}}.
- Never invent metrics, revenue, funding or customer numbers, and never put an undisclosed number in a title or thumbnail.
