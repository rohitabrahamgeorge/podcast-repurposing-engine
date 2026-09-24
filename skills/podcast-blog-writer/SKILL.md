---
name: podcast-blog-writer
description: Turns a "{{SHOW_NAME}}" podcast transcript into a publish-ready, SEO-optimized long-form blog article for founders, marketers, GTM leaders and operators. Runs in two phases, meaning first it proposes 2 to 3 editorial theses each with a low-difficulty keyword map and STOPS for the user to choose, then it writes the full article with title, scannable body, URL slug and five meta description options. Use whenever the user wants a blog post, article, written recap or SEO piece built from a podcast transcript or episode. Trigger on phrases like "write the blog from this episode", "turn this transcript into an article", "blog post for the [guest] episode", "what should the blog angle be", "SEO article from this podcast", or any transcript shared with intent to produce long-form written content. Trigger aggressively for any transcript-to-blog request for {{BRAND}}.
---

# Podcast Blog Writer

> **Show profile.** This skill uses placeholders such as `{{SHOW_NAME}}`, `{{HOST_NAME}}`, `{{BRAND}}` and `{{AUDIENCE}}`. They are normally filled once by running `setup.sh` from the repo root. If any `{{...}}` placeholder is still unfilled when this skill runs, ask the user for those values once at the start, then use the answers everywhere. Never output a raw placeholder.

Turns one episode transcript into one SEO article that can rank and that a senior reader will actually finish.

Show: {{SHOW_NAME}}. Host: {{HOST_NAME}}. Brand: {{BRAND}}. Reader: {{AUDIENCE}}.

## Phase 1: Thesis and keyword options. Then stop.

Read the full transcript. Identify the guest, role, company and the genuinely new thing the episode contains.

Propose 2 to 3 editorial theses. A thesis is an argument the article makes, not a topic it covers. "How the guest thinks about intent data" is a topic. "Your list beats your copy, and most teams are optimizing the wrong one" is a thesis.

For each thesis give:

- **Working title**
- **The argument**, in 2 to 3 lines
- **Who it is for** and what they are searching when they need it
- **Primary keyword.** Favour lower-difficulty, high-intent terms a {{BRAND}} domain can realistically win. Do not propose head terms the site cannot rank for.
- **Secondary keywords.** 3 to 5.
- **Supporting semantic terms.** 8 to 12, the vocabulary the topic needs for topical coverage.
- **Which transcript sections it draws on**

**STOP HERE.** Wait for the user to pick a thesis. Do not write the article. They may also edit a thesis before you write.

## Phase 2: Write the article

Once the thesis is chosen, deliver in this order:

**1. SEO keyword summary.** Primary, secondary and semantic terms, plus where each is placed.

**2. Title.** Follows the pattern of topic, depth signal, guest. Credible for a senior reader, not clickbait.

**3. The article.** Requirements:

- Primary keyword in the H1, inside the first 150 words, and in at least two H2s.
- Opens on the argument, not on "in this episode of {{SHOW_NAME}}". The episode is the evidence, not the subject.
- Executive skimmable. Short paragraphs, descriptive H2s that carry meaning when read alone, frameworks and lists where the content is genuinely structured.
- Every claim anchored in the transcript. Quote the guest verbatim where the exact wording matters, and attribute clearly.
- A podcast callout block linking the full episode, placed after the first major section.
- Internal links to relevant {{BRAND}} pages with descriptive anchor text. Never link to a competitor.
- Closes with what the reader should do next, connecting naturally to {{BRAND}} where it fits the argument.

**4. URL slug.** Short, keyword-led, no dates, no stop words.

**5. Five meta description options.** Each under 155 characters, each containing the primary keyword, each written to earn a click rather than to summarise.

## House rules

- No em dashes anywhere in the output.
- Brand is {{BRAND}}. Show is {{SHOW_NAME}}. Host is {{HOST_NAME}}.
- Never invent metrics, revenue, funding or customer numbers. If the guest did not disclose it in the transcript, it does not appear in the article.
- No years in the headline.
