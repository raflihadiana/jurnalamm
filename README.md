# Jurnalamm.dev

Welcome to the **Jurnalamm.dev** repository. This site is built with [Hugo](https://gohugo.io/) and uses the [Blowfish](https://blowfish.page/) theme.

## 🚀 Quick Start

### 1. Create a New Post
To add a new blog post, simply create a markdown file in `content/posts/`.

**Option A: Using Hugo CLI (Recommended)**
```bash
hugo new posts/my-new-post.md
```

**Option B: Manually**
Create a file at `content/posts/my-new-post.md` with the following front matter:
```markdown
---
title: "My New Post"
date: 2024-03-20T12:00:00+07:00
draft: false
tags: ["tech", "life"]
---

Write your content here...
```

### 2. Preview Locally
Run the local server to preview your changes:
```bash
hugo server
```
Visit `http://localhost:1313`.

### 3. Deploy
Deployment is **automatic**. Just push your changes to the `master` branch.
```bash
git add .
git commit -m "Add new post"
git push origin master
```
The [GitHub Action](.github/workflows/deploy.yml) will build the site and deploy it to your VPS.

---

## 📂 Project Structure

This repository is kept clean to focus on **your content**.

| Directory | Purpose |
|Data | |
| `content/` | **Your Content**. All blog posts and pages go here. |
| `config/_default/` | **Configuration**. Tweak site settings (menus, languages, etc.) here. |
| `static/` | **Static Files**. Images or files placed here will be copied to the root of your site. |
| `themes/blowfish/` | **The Theme**. Do not edit this directly. Reference it for components. |
| `archetypes/` | Templates for new posts. |

---

## 🎨 Customization

### Adding Components / Shortcodes
The [Blowfish Theme](https://blowfish.page/docs/shortcodes/) comes with many built-in shortcodes (Alerts, Buttons, Charts, etc.). You don't need to install anything.

**Example: Adding an Alert**
```markdown
{{< alert icon="lightbulb" >}}
This is a helpful tip!
{{< /alert >}}
```

### Changing Config
- **Main Config**: `config/_default/hugo.toml` (Base URL, Theme settings)
- **Menus**: `config/_default/menus.en.toml` (Navigation links)
- **Params**: `config/_default/params.toml` (Theme customization like colors, author info)

### Advanced: Overriding Layouts
If you need to change how a page looks *beyond* configuration, create a file in `layouts/` with the same name as the file in `themes/blowfish/layouts/`. **Yours will take precedence.**
