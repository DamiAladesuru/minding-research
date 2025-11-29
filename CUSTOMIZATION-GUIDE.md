# Home Page Customization Guide

Your new Jekyll site has a custom home page with author bio, research quote, and recent blog posts!

## Quick Customizations

### 1. Update Your Name and Bio (index.html)

Edit `index.html`:

```html
<h2 class="site-author">Your Name</h2>
```

Change "Your Name" to your actual name.

### 2. Add Your Email and LinkedIn

In `index.html`, find:

```html
<a href="mailto:your-email@example.com" class="social-link" title="Email">
```

Replace `your-email@example.com` with your email.

```html
<a href="https://linkedin.com/in/yourprofile" class="social-link linkedin" title="LinkedIn">
```

Replace `yourprofile` with your LinkedIn username.

### 3. Update Research Quote

Edit the quote in `index.html`:

```html
<p class="quote-text">
  Research allows us to learn more about people, systems, and societies...
</p>
```

Replace with your own inspiring quote or research philosophy.

### 4. Update Current Research Section

Edit the Current Research section in `index.html`:

```html
<section class="current-research">
  <h2>Current Research Activities</h2>
  <p>
    Your research description here...
  </p>
</section>
```

Or remove this section entirely if you don't want it.

### 5. Add Your Avatar Image

1. Save your profile picture as `assets/images/avatar.png` (or .jpg)
2. Make it square (400x400px recommended)
3. The SVG fallback will show if no image is found

### 6. Customize Welcome Page

Edit `welcome.md` to add your own welcome content.

### 7. Add More Social Links

To add more social links (GitHub, Twitter, etc.), add this code in the social-links section:

**GitHub:**
```html
<a href="https://github.com/yourusername" class="social-link" title="GitHub">
  <svg width="24" height="24" viewBox="0 0 24 24" fill="currentColor">
    <path d="M12 0C5.37 0 0 5.37 0 12c0 5.31 3.435 9.795 8.205 11.385.6.105.825-.255.825-.57 0-.285-.015-1.23-.015-2.235-3.015.555-3.795-.735-4.035-1.41-.135-.345-.72-1.41-1.23-1.695-.42-.225-1.02-.78-.015-.795.945-.015 1.62.87 1.845 1.23 1.08 1.815 2.805 1.305 3.495.99.105-.78.42-1.305.765-1.605-2.67-.3-5.46-1.335-5.46-5.925 0-1.305.465-2.385 1.23-3.225-.12-.3-.54-1.53.12-3.18 0 0 1.005-.315 3.3 1.23.96-.27 1.98-.405 3-.405s2.04.135 3 .405c2.295-1.56 3.3-1.23 3.3-1.23.66 1.65.24 2.88.12 3.18.765.84 1.23 1.905 1.23 3.225 0 4.605-2.805 5.625-5.475 5.925.435.375.81 1.095.81 2.22 0 1.605-.015 2.895-.015 3.3 0 .315.225.69.825.57A12.02 12.02 0 0024 12c0-6.63-5.37-12-12-12z"/>
  </svg>
</a>
```

**Twitter:**
```html
<a href="https://twitter.com/yourusername" class="social-link" title="Twitter">
  <svg width="24" height="24" viewBox="0 0 24 24" fill="currentColor">
    <path d="M23.953 4.57a10 10 0 01-2.825.775 4.958 4.958 0 002.163-2.723c-.951.555-2.005.959-3.127 1.184a4.92 4.92 0 00-8.384 4.482C7.69 8.095 4.067 6.13 1.64 3.162a4.822 4.822 0 00-.666 2.475c0 1.71.87 3.213 2.188 4.096a4.904 4.904 0 01-2.228-.616v.06a4.923 4.923 0 003.946 4.827 4.996 4.996 0 01-2.212.085 4.936 4.936 0 004.604 3.417 9.867 9.867 0 01-6.102 2.105c-.39 0-.779-.023-1.17-.067a13.995 13.995 0 007.557 2.209c9.053 0 13.998-7.496 13.998-13.985 0-.21 0-.42-.015-.63A9.935 9.935 0 0024 4.59z"/>
  </svg>
</a>
```

## Content Width

The site now uses a **narrow centered layout (680px max-width)** for better readability, like in your reference image.

To change the width, edit `assets/css/main.css`:

```css
.wrapper {
  max-width: 680px;  /* Change this value */
  margin: 0 auto;
  padding: 0 30px;
}
```

Common widths:
- **580px** - Very narrow, blog-focused
- **680px** - Current (good for reading)
- **800px** - Slightly wider
- **960px** - Traditional content width

## Color Scheme

To change colors, edit `assets/css/main.css`:

**Links:**
```css
a {
  color: #0066cc;  /* Change this */
}
```

**LinkedIn button:**
```css
.social-link.linkedin {
  background: #0077B5;  /* Change this */
}
```

**Avatar fallback:**
```css
circle cx="40" cy="40" r="40" fill="#4A90E2"  <!-- In index.html -->
```

## Structure Overview

```
Home (/)                  → Bio + Quote + Recent Posts
├── Welcome (/welcome/)   → Your welcome message
├── About Me (/about/)    → Detailed bio
└── Blog (/blog/)         → All posts
    ├── Research          → Research category
    └── Tutorials         → Tutorial category
```

## Testing

After making changes:
1. Save your files
2. Jekyll will auto-reload (with `--livereload`)
3. Refresh browser to see changes

## Need Help?

Check the main README.md for general Jekyll help!
