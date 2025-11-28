# Dev Container Quick Start Guide

## What is a Dev Container?

A Dev Container lets you develop inside a Docker container with all dependencies pre-installed. No Ruby setup needed on your computer!

## Prerequisites

1. [Docker Desktop](https://www.docker.com/products/docker-desktop) - Download and install
2. [VS Code](https://code.visualstudio.com/) - Download and install
3. [Dev Containers Extension](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers) - Install in VS Code

## Getting Started

### First Time Setup

1. **Open VS Code**
2. **Open this folder** (File → Open Folder)
3. **VS Code will detect the Dev Container** and show a popup
4. **Click "Reopen in Container"**
   - Or press `F1` and type "Dev Containers: Reopen in Container"
5. **Wait for the container to build** (2-3 minutes first time)
6. **You're ready!** All dependencies are installed

### Running the Site

Once inside the container:

**Option 1: Use VS Code Tasks (Easiest)**
- Press `Ctrl+Shift+B` (or `Cmd+Shift+B` on Mac)
- Select "Serve Jekyll Site"
- Your site will open at `http://localhost:4000`

**Option 2: Use Terminal**
```bash
bundle exec jekyll serve --host 0.0.0.0 --livereload
```

### Working with Files

Everything works normally:
- Edit files in VS Code
- Changes auto-reload in browser (with livereload)
- Git works as usual
- Terminal runs inside the container

### VS Code Features Included

- **Liquid syntax highlighting** for Jekyll templates
- **Markdown preview** for posts
- **YAML validation** for config files
- **Tasks** for common commands
- **Auto port forwarding** for the Jekyll server

### Common Tasks

Create tasks via Command Palette (`F1` or `Ctrl+Shift+P`):

- **Serve Jekyll Site** - Start development server
- **Build Jekyll Site** - Build static files
- **Install Dependencies** - Run `bundle install`
- **Create New Post** - Interactive post creator

### Creating a New Post

1. Press `F1` → "Tasks: Run Task" → "Create New Post"
2. Enter post title, slug, and category
3. New file created in `_posts/` with today's date

### Stopping the Server

- Press `Ctrl+C` in the terminal
- Or close the terminal panel

### Exiting the Container

- Just close VS Code
- Or click the blue bottom-left corner → "Reopen Folder Locally"

## Advantages of Dev Container

✅ **No Ruby installation** needed on your machine
✅ **Consistent environment** across different computers
✅ **Isolated dependencies** won't conflict with other projects
✅ **Pre-configured tools** and extensions
✅ **Easy cleanup** - just delete the container
✅ **Share exact environment** with others

## Troubleshooting

**Container won't start?**
- Make sure Docker Desktop is running
- Try: "Dev Containers: Rebuild Container"

**Port 4000 already in use?**
- Stop other Jekyll instances
- Or change port in `.devcontainer/devcontainer.json`

**Changes not showing?**
- Hard refresh browser (`Ctrl+Shift+R`)
- Check terminal for build errors

## Alternative: Docker Compose

If you prefer command line without VS Code:

```bash
docker-compose up
```

This will:
- Build the container
- Install dependencies
- Start Jekyll server
- Watch for file changes

Stop with `Ctrl+C`

## Without Docker?

If you can't use Docker, see the main README for native Ruby installation instructions.
