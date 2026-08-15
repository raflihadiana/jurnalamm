---
title: "Testing CI/CD Pipeline Update"
date: 2026-08-15T07:06:00Z
draft: false
tags: ["ci-cd", "testing", "hugo"]
description: "A new post to trigger and test the GitHub Actions deployment workflow."
---

## CI/CD Pipeline Test

This is a new article added to trigger the GitHub Actions workflow in `.github/workflows/gh-pages.yml`.

### Details
- **Trigger**: Push to the `master` branch.
- **Action**: Builds the Hugo site using `peaceiris/actions-hugo` and deploys using `actions/deploy-pages`.
- **Purpose**: Verify that the CI/CD pipeline correctly builds the `public` directory and deploys it to GitHub Pages.

If you are reading this on the live site, the CI/CD pipeline was successful!
