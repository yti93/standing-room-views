# Standing Room Views

A static archive of the *Standing Room Views* baseball blog, originally hosted on Wix. Built with [Jekyll](https://jekyllrb.com/) and the `minima` theme, ready to deploy on GitHub Pages.

## What's here

All 15 published posts from the Wix blog, cached as Jekyll markdown files in `_posts/`, with their original titles, dates, and categories (Quick Hits, Personal Essays, In-Depth Analysis) preserved as front matter.

## How to publish this on GitHub Pages

1. Create a new GitHub repository (e.g. `standing-room-views`) and push this folder to it:

   ```bash
   git init
   git add .
   git commit -m "Import Standing Room Views blog archive"
   git branch -M main
   git remote add origin https://github.com/<your-username>/<repo-name>.git
   git push -u origin main
   ```

2. In the repo on GitHub, go to **Settings → Pages**, and under **Build and deployment → Source**, choose **GitHub Actions**. The included workflow (`.github/workflows/pages.yml`) will build and deploy the site automatically on every push to `main`.

3. Your site will be live at `https://<your-username>.github.io/<repo-name>/` a minute or two after the workflow finishes (check the **Actions** tab for progress).

## Running it locally (optional)

```bash
bundle install
bundle exec jekyll serve
```

Then visit `http://localhost:4000`.

## Adding new posts

Drop a new markdown file into `_posts/` named `YYYY-MM-DD-title.md` with front matter like:

```yaml
---
layout: post
title: "My New Post"
date: 2026-09-03 00:00:00 -0700
categories: ["Quick Hits"]
---

Post content goes here.
```
