# Standing Room Views

Archive of my baseball blog, originally written on Wix between 2018 and 2019. Rebuilt as a Jekyll site with a custom theme matching my [main site](https://yti93.github.io/), deployed via GitHub Pages and GitHub Actions.

## Structure

- `_posts/` — the 15 original posts, as Jekyll markdown with front matter (title, date, category)
- `_layouts/` — custom templates (`default`, `home`, `post`) matching the main site's design
- `assets/css/style.css` — shared styles
- `assets/images/` — post images, one folder per post

## Writing in VS Code

Open this folder in VS Code and it will offer to install a few recommended extensions
(front matter editing/preview, markdown linting, spell check). From there:

- **Run Task -> Blog: New Post** — prompts for a title, creates `_posts/YYYY-MM-DD-title.md`
  with front matter already filled in.
- **Run Task -> Blog: New Draft** — same, but writes to `_drafts/title.md` (no date prefix),
  which Jekyll ignores by default, so it never appears on the live site until you move it
  into `_posts/`.
- **Run Task -> Blog: Preview (jekyll serve)** — builds and serves the site at
  `http://localhost:4000` with live reload as you edit.
- **Run Task -> Blog: Preview with drafts** — same, but also renders anything in `_drafts/`.
- **Run Task -> Blog: Build (production)** — runs the same build GitHub Actions runs, to
  catch a bad front-matter field locally instead of in CI.
- Typing `srvpost` in a new `.md` file expands to the standard front matter block; `srvimg`
  expands to a site-relative image tag matching the existing posts.
- The [Front Matter CMS](https://frontmatter.codes/) extension (if installed) adds a
  dashboard for browsing/creating posts and drafts and editing front matter fields visually.

Run **Terminal -> Run Task -> Blog: Install dependencies** once (`bundle install`) before
the first preview.

## Adding a new post manually

You can still just drop a markdown file into `_posts/` named `YYYY-MM-DD-title.md`:

```yaml
---
layout: post
title: "Post Title"
date: 2026-09-03 00:00:00 -0700
categories: ["Quick Hits"]
---

Post content goes here.
```

Draft it on a branch, preview locally, then open a PR into `main`. Once merged, GitHub
Actions rebuilds and deploys automatically — check the Actions tab to confirm the run
succeeded.

Live at [yti93.github.io/standing-room-views](https://yti93.github.io/standing-room-views/).
