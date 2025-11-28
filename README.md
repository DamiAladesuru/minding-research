# Minding Research - Jekyll Theme

A clean and minimal Jekyll theme with dropdown navigation, perfect for research blogs and academic websites.

## Features

- Clean, minimalist design
- Dropdown navigation menu
- Responsive layout
- Category-based blog organization
- Easy to customize

## Installation

### Option 1: Dev Container in VS Code (Recommended) 🐳

**Best for:** Clean, isolated development without installing Ruby

1. Install [Docker Desktop](https://www.docker.com/products/docker-desktop)
2. Install [VS Code](https://code.visualstudio.com/) and the [Dev Containers extension](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers)
3. Open this folder in VS Code
4. Click "Reopen in Container" when prompted (or use Command Palette: "Dev Containers: Reopen in Container")
5. Wait for container to build (first time only)
6. Press `Ctrl+Shift+B` or run task "Serve Jekyll Site"
7. Visit `http://localhost:4000`

**That's it!** Everything is pre-configured.

### Option 2: Docker Compose 🐳

**Best for:** Docker users who prefer command line

```bash
docker-compose up
```

Visit `http://localhost:4000`

### Option 3: Native Ruby Installation

**Best for:** Ruby developers or if you need maximum performance

1. Make sure you have Ruby installed (2.7 or higher)
   - macOS: `brew install ruby`
   - Ubuntu: `sudo apt-get install ruby-full`
   - Windows: Use [RubyInstaller](https://rubyinstaller.org/)

2. Install Jekyll and Bundler:
   ```bash
   gem install jekyll bundler
   ```

3. Navigate to the project directory:
   ```bash
   cd minding-research
   ```

4. Install dependencies:
   ```bash
   bundle install
   ```

5. Run the site locally:
   ```bash
   bundle exec jekyll serve
   ```

6. Visit `http://localhost:4000` in your browser

### Option 4: GitHub Codespaces ☁️

**Best for:** Quick testing without local setup

1. Click "Code" → "Codespaces" → "Create codespace"
2. Wait for environment to load
3. Run: `bundle exec jekyll serve --host 0.0.0.0`
4. Click the port forwarding link when prompted

## Customization

### Site Information
Edit `_config.yml` to update:
- Site title
- Email
- Description
- URL settings

### Navigation Menu
Edit `_data/navigation.yml` to customize menu items and dropdown links.

### Styling
Modify `assets/css/main.css` to change colors, fonts, and layout.

### Content
- Add pages in the root directory (e.g., `about.md`)
- Add blog posts in `_posts/` directory with format: `YYYY-MM-DD-title.md`
- Use categories: `research`, `tutorials`, or create your own

## Creating Posts

Create a new file in `_posts/` with this format:

```markdown
---
layout: post
title: "Your Post Title"
date: 2024-11-29
categories: research
---

Your content here...
```

## Deployment

You can deploy this site to:
- GitHub Pages
- Netlify
- Vercel
- Any static hosting service

For GitHub Pages, simply push to your repository and enable GitHub Pages in settings.

## License

Free to use and modify for your own projects.
