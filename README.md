# Standing Room Views

Archive of my baseball blog, originally written on Wix between 2018 and 2019. Rebuilt as a Jekyll site with a custom theme matching my [main site](https://yti93.github.io/), deployed via GitHub Pages and GitHub Actions.

## Structure

- `_posts/` — the 15 original posts, as Jekyll markdown with front matter (title, date, category)
- `_layouts/` — custom templates (`default`, `home`, `post`) matching the main site's design
- `assets/css/style.css` — shared styles
- `assets/images/` — post images, one folder per post

## Adding a new post

Drop a markdown file into `_posts/` named `YYYY-MM-DD-title.md`:

```yaml
---
layout: post
title: "Post Title"
date: 2026-09-03 00:00:00 -0700
categories: ["Quick Hits"]
---

Post content goes here.
```

Push to `main` and GitHub Actions rebuilds and deploys automatically.

Live at [yti93.github.io/standing-room-views](https://yti93.github.io/standing-room-views/).
