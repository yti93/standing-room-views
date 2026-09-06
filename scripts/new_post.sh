#!/usr/bin/env bash
# Create a new Standing Room Views post or draft with front matter matching
# the site's existing posts (layout/title/date/categories).
#
# Usage:
#   scripts/new_post.sh "My Title"            -> _posts/YYYY-MM-DD-my-title.md
#   scripts/new_post.sh "My Title" --draft     -> _drafts/my-title.md
set -euo pipefail

if [ $# -lt 1 ]; then
  echo "Usage: $0 \"Post Title\" [--draft]" >&2
  exit 1
fi

TITLE="$1"
DRAFT=false
if [ "${2:-}" = "--draft" ]; then
  DRAFT=true
fi

SLUG=$(echo "$TITLE" | tr '[:upper:]' '[:lower:]' | sed -E 's/[^a-z0-9]+/-/g; s/^-+//; s/-+$//')
if [ -z "$SLUG" ]; then
  echo "Could not derive a filename slug from title: $TITLE" >&2
  exit 1
fi

DATE_STAMP=$(date +%Y-%m-%d)
DATE_FULL=$(date +"%Y-%m-%d %H:%M:%S %z")

if [ "$DRAFT" = true ]; then
  mkdir -p _drafts
  FILE="_drafts/${SLUG}.md"
else
  mkdir -p _posts
  FILE="_posts/${DATE_STAMP}-${SLUG}.md"
fi

if [ -e "$FILE" ]; then
  echo "File already exists, not overwriting: $FILE" >&2
  exit 1
fi

TITLE_ESCAPED=$(echo "$TITLE" | sed 's/"/\\"/g')

cat > "$FILE" <<EOF
---
layout: post
title: "${TITLE_ESCAPED}"
date: ${DATE_FULL}
categories: [""]
---

EOF

echo "Created ${FILE}"
