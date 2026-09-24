---
name: podcast-repurposing-engine
description: Master orchestrator that turns a single "{{SHOW_NAME}}" transcript into the full repurposing set in one coordinated run. Use this whenever the user shares a new podcast transcript, episode notes, or a recording link and wants the whole package rather than one asset. Trigger aggressively on a bare transcript drop, or on phrases like "run the full pipeline on this episode", "repurpose this transcript", "do everything for this episode", "give me the works for [guest]", "fire all the skills on this", or "process this episode". This engine coordinates five sub-skills in order, meaning clip-curator, youtube-packaging, podcast-blog-writer, lead-magnet-playbook, and blog-seo-auditor. When a full repurposing run is requested, this orchestrator OWNS the sequence. Do not fire those five skills independently for a whole-episode run. If the user names only specific deliverables, run just those. Also sequences trailer-architect, broll-researcher and carousel-deck-architect as on-request add-ons.
---

# Episode Repurposing Engine

> **Show profile.** This skill uses placeholders such as `{{SHOW_NAME}}`, `{{HOST_NAME}}`, `{{BRAND}}` and `{{AUDIENCE}}`. They are normally filled once by running `setup.sh` from the repo root. If any `{{...}}` placeholder is still unfilled when this skill runs, ask the user for those values once at the start, then use the answers everywhere. Never output a raw placeholder.

One transcript in, the whole content set out. This is the master orchestrator for repurposing a "{{SHOW_NAME}}" episode. It does not write the deliverables itself. It reads the transcript once, then invokes the five sub-skills in the right order and manages the two decision gates so the user gets everything with the fewest interruptions.

## Requires these five installed skills

- clip-curator
- youtube-packaging
- podcast-blog-writer
- lead-magnet-playbook
- blog-seo-auditor

Each sub-skill is the single source of truth for its own rules and output format. This engine points to them and sequences them. It does not restate their internal instructions. When a stage calls a sub-skill, read that skill's SKILL.md and follow it exactly.

## Why the order matters

Two of the five have mandatory stop points. The blog writer stops after Phase 1 to let the user pick a thesis and keyword set. The lead magnet stops after proposing three angles. The clip curator and YouTube package need no decision from the user, because the clip curator selects the four reels and makes the trial pick itself. The SEO auditor needs a finished blog to audit. So the engine front-loads the no-decision assets, batches both decisions into one gate, builds the long-form pieces, then audits the blog it just wrote. Two choices total, not five separate rounds.

---

## Workflow

### Stage 0: Intake and manifest

Confirm a transcript is actually present. If none is attached, ask for it and stop.

Read enough of the transcript to identify the guest name, role, company and core topic. State the episode identity in one line so the user can correct it. Then print the run manifest:

```
Episode: [Guest], [Role] at [Company], [core topic]

Producing now (no input needed):
1. Four built reels, trial pick and release plan (clip-curator)
2. YouTube package (youtube-packaging)

Needs one decision each (options below):
3. Blog article (podcast-blog-writer)
4. Lead magnet playbook (lead-magnet-playbook)

Auto after the blog is written:
5. SEO audit of the blog (blog-seo-auditor)

Add-ons, on request:
6. Cold-open trailer script (trailer-architect)
7. B-roll research for the edit (broll-researcher)
8. Carousel deck (carousel-deck-architect)
```

## One deliverable per turn

Never batch multiple sub-skills into a single reply. Each stage below is its own
turn. Produce that stage's deliverable in full, stop, and wait for the user to say
go before starting the next one. Quality collapses when several sub-skills are
compressed into one response, and the reel build sheets in particular need the
full turn to themselves.

After finishing a stage, end with one line naming what comes next, for example:
"Reels done. Say go and I will run the YouTube package."

### Stage 1: Reels, produced in its own turn

1. **Reels.** Apply clip-curator in full. That means all four of its phases: the triage shortlist, the four selected reels, a complete editor build sheet for each of the four, and the release plan naming the single trial pick. Do not stop after the shortlist and do not build fewer than four. The build sheets are the point.
**Next turn: YouTube package.** Apply youtube-packaging. Hero extraction, three combo sets, description, chapters, tags, hashtags and the testing note.

### Stage 2: Decision gates, in their own turn, presented together, then STOP

3. **Blog thesis options.** Run only Phase 1 of podcast-blog-writer: the 2 to 3 theses with their keyword maps. Do not write the blog.
4. **Lead magnet angles.** Run only Steps 1 to 3 of lead-magnet-playbook: extracted topics, the unifying growth narrative, and the three angles. Do not build the playbook.

End the turn with a clear ask, for example:

> To unlock the full blog and the lead magnet, reply with two picks: which blog thesis, and which lead magnet angle. You can tweak either before I write.

Stop here and wait.

### Stage 3: Long-form build, after the user replies

5. **Full blog.** Phase 2 of podcast-blog-writer using the chosen thesis. Keyword summary, title, full article, URL slug, five meta description options.
6. **Full lead magnet.** The build phase of lead-magnet-playbook using the chosen angle. Full structured playbook including the checklist and the AI prompt templates, with the {{BRAND}} CTA blended in.

### Stage 4: Auto QA, same turn as Stage 3

7. **SEO audit.** Apply blog-seo-auditor to the blog just written. Return the scorecard, prioritized recommendations and specific edits, framed as an optional polish pass before publishing.

### Stage 5: Add-ons, one per turn, only when asked

These three are part of the set but are not in the default run. Offer them once after Stage 4 in a single line, for example: "Want the trailer, the B-roll list or a carousel next?" Run each in its own turn.

8. **Trailer.** Apply trailer-architect to the same transcript.
9. **B-roll.** Apply broll-researcher. It needs the guest's LinkedIn URL, so ask for it if it is not already known.
10. **Carousel.** Apply carousel-deck-architect, using the chosen blog thesis or lead magnet angle as the deck's argument so the carousel points at the same promise.

---

## Partial and custom runs

If the user names specific deliverables such as "just clips and YouTube", "only the blog and the audit", or "skip the lead magnet", run only those in the same relative order. Keep the decision gate only for the pieces that need it. The audit runs on a blog only if a blog is produced or supplied.

If the user drops a transcript with no instruction at all, default to the full run.

## Handling the guest and episode link

Pull the guest name, role and company from the transcript for every sub-skill that needs them. If the episode URL is known, pass it to the blog writer for the podcast callout, to the YouTube package, and to the clip curator for the reel end CTAs on all four reels. If it is not known, say so rather than inventing one.

## House rules, enforced across every stage

- No em dashes anywhere in any output.
- Brand is {{BRAND}}. Show is {{SHOW_NAME}}. Host is {{HOST_NAME}}.
- Never invent metrics, revenue, funding or customer numbers. If the guest did not disclose it in the transcript, it does not appear anywhere in the run.
