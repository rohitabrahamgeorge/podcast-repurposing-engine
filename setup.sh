#!/usr/bin/env bash
# Fill in your show profile once, then install all nine skills.
#
#   ./setup.sh            install into ~/.claude/skills (Claude Code)
#   ./setup.sh --zip      also build one .zip per skill in dist/ (upload to Claude.ai)
#
# The repo itself is never modified. Filled copies go to the install target.

set -euo pipefail

ROOT="$(cd "$(dirname "$0")" && pwd)"
TARGET="${CLAUDE_SKILLS_DIR:-$HOME/.claude/skills}"
MAKE_ZIP=false
[[ "${1:-}" == "--zip" ]] && MAKE_ZIP=true

ask() {
  local var="$1" prompt="$2" default="${3:-}" answer
  if [[ -n "$default" ]]; then
    read -r -p "$prompt [$default]: " answer
    answer="${answer:-$default}"
  else
    read -r -p "$prompt: " answer
  fi
  printf -v "$var" '%s' "$answer"
}

echo "Show profile. Press Enter to accept a default."
echo
ask SHOW_NAME       "Show name"                         "The Growth Room"
ask HOST_NAME       "Host name"                         "Alex Rivera"
ask HOST_ROLE       "Host role, one line"               "founder and CEO of Acme"
ask BRAND           "Brand or company behind the show"  "Acme"
ask PODCAST_URL     "Podcast page URL"                  "https://example.com/podcast"
ask SHOW_TAGLINE    "Show tagline"                      "Unfiltered playbooks from the operators building what everyone else is chasing."
ask AUDIENCE        "Who the show is for"               "founders, marketers, GTM leaders and operators"
ask AUDIENCE_REGION "Primary audience region"           "US and Europe"
ask NICHE           "Account niche, a few words"        "B2B growth and AI"
ask GUEST_PROFILE   "Typical guest, a few words"        "founders and operators"
ask SHOW_TOPICS     "Core topics, a few words"          "growth, GTM and AI"

export SHOW_NAME HOST_NAME HOST_ROLE BRAND PODCAST_URL SHOW_TAGLINE AUDIENCE \
       AUDIENCE_REGION NICHE GUEST_PROFILE SHOW_TOPICS

mkdir -p "$TARGET"
for dir in "$ROOT"/skills/*/; do
  name="$(basename "$dir")"
  rm -rf "${TARGET:?}/$name"
  cp -R "$dir" "$TARGET/$name"
  find "$TARGET/$name" -name '*.md' -print0 | xargs -0 perl -0pi -e '
    s/^> \*\*Show profile\.\*\*[^\n]*\n\n//m;
    s/\{\{(SHOW_NAME|HOST_NAME|HOST_ROLE|BRAND|PODCAST_URL|SHOW_TAGLINE|AUDIENCE_REGION|AUDIENCE|NICHE|GUEST_PROFILE|SHOW_TOPICS)\}\}/$ENV{$1}/g'
  echo "Installed $name"
done

if $MAKE_ZIP; then
  mkdir -p "$ROOT/dist"
  for dir in "$TARGET"/*/; do
    name="$(basename "$dir")"
    [[ -d "$ROOT/skills/$name" ]] || continue
    (cd "$TARGET" && zip -qr "$ROOT/dist/$name.zip" "$name")
  done
  echo "Zips ready in dist/. Upload each one in Claude.ai under Settings > Capabilities > Skills."
fi

echo
echo "Done. Start a new Claude session and drop in a transcript."
