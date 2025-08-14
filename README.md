# TC_Web

A work-in-progress website for **[TamrielCraft](https://www.tamrielcraft.eu/)** – a Minecraft project dedicated to recreating Tamriel and surrounding lands based on The Elder Scrolls series.

> 🛠 Built with [Jekyll](https://jekyllrb.com/) using the [Minimal Mistakes](https://mmistakes.github.io/minimal-mistakes/) theme.  
> 🧪 Hosted via GitHub Pages for public previews and testing.

---

## 🔗 Preview

View the current live preview on GitHub Pages:  
👉 [https://jackjt8.github.io/TamrielCraft_Website/](https://jackjt8.github.io/TamrielCraft_Website/)

---

## 💻 Local Development

To build the site locally, you need Ruby, Bundler, and Jekyll installed.

### ✅ Requirements

- Ruby (3.1 or higher recommended)
- Bundler (`gem install bundler`)
- Jekyll (`gem install jekyll`)
- Git (to clone or contribute)
- `libvips` (image processing backend used by jekyll_picture_tag) with `imagemagick` as a fallback.
- Image libraries: `libjpeg`, `libpng`, `libwebp`, `libtiff`, etc.
- A modern browser for testing

You can install Ruby via [rubyinstaller.org](https://rubyinstaller.org/) (Windows) or use Homebrew / a version manager on macOS/Linux.  
For libvips and image libraries:

- **macOS**:  
  `brew install vips`

- **Ubuntu/Debian**:  
  `sudo apt install libvips libjpeg-dev libpng-dev libwebp-dev libtiff-dev`

- **Windows**:  
  Use the [vips Windows installer](https://github.com/libvips/libvips/releases) (add it to PATH)


### 🚀 Setup Steps

1. **Clone the repository**

   ```bash
	git clone https://github.com/jackjt8/TC_Web.git
	cd TC_Web
	```

2. **Install dependencies**

	`bundle install`
	
3. **Serve locally**

	`bundle exec jekyll serve`
	
4. **View site**

	Open: http://localhost:4000/TC_Web/
	
---

## 🖼 Gallery & Image Submissions

When adding images to the site, do not use standard Markdown syntax or raw <img> tags — these bypass our optimization pipeline and can result in oversized or inconsistent images.

All images must use Jekyll Picture Tag (JPT), which automatically:
- Generates responsive sizes.
- Creates AVIF and WebP fallbacks for better performance.
- Optimizes file size while retaining visual quality.

Unless you have a very good reason, avoid using the default JPT tag
`{% picture preset_name /path/to/image alt="Descriptive alt text" %}` directly. Instead, use our captioned include — it provides a consistent style and ensures credits/titles appear on the image.


### 📸 JPT Usage (via figure_captioned_jpt.html)

The preferred format for images is:

```
{% include figure_captioned_jpt.html
   preset="preset_name"
   src="/path/to/image"
   alt="Descriptive alt text"
   caption="Image title and credits"
%}
```

Parameters:

- `preset` — Choose the most appropriate preset for the image’s context.
  - `blog`: Default for most inline images.
  - `thumbnail`: Icons, graphics, and small assets.
  - `gallery` and `hero`: For gallery pages and page headers — handled separately.
- `src` — Path to the full-size image, placed under assets/images/fullsize/... in the correct subdirectory.
Commit images in their highest quality (typically 3840×2160 PNG).
- `alt` — Required for accessibility.
- `caption` — Appears in the bottom-right overlay; generally the image title followed by a “taken by …” credit.


### 📏 Image Guidelines

- **Sharpness & Composition**: Images should be clear, well-framed, and free of watermarks.
- Preferred resolution: **3840×2160 (4K) PNG**.
- Higher resolutions are accepted, but use JPG or another efficient format if PNG is too large (minimal compression only).
- Minimum resolutions:
 - `blog` post body images: 1280×720.
 - `hero` headers & `gallery` images: 3840×2160 (exceptions possible).
 - `thumbnails`: Max 512×512 (no minimum defined yet).


### 📂 Adding to the Gallery

To add an image to an existing gallery, update /_data/gallery.yml:

```
blackmarsh:
  - url: /path/to/image
    alt: "Descriptive alt text"
    title: "Image title and credits"
```

If you create a new gallery ID, also update /_pages/gallery.md with the appropriate include: `{% include gallery id="blackmarsh" %}`


#### Supported Formats

The build system supports:

- **Primary formats**: JPEG, PNG, WebP, AVIF.
- Optional formats: TIFF, SVG, HEIF, GIF, EXIF (currently unused in presets)


### ❌ What Not to Do

Do not:

- Do not use standard Markdown syntax: `![Alt text](/assets/images/example.jpg)`
- Do not use raw HTML <img> tags in posts.
- Do not commit blurry, low-quality, or heavily compressed screenshots.


---

## 📝 Notes & Suggestions

- Use meaningful commit messages (e.g., Add post for Anvil update, not Update file)
- Posts should follow the YYYY-MM-DD-title.md format in _posts/
- Site colors, fonts, and layout tweaks can be overridden via _sass/minimal-mistakes-overrides.scss
- Sass warnings are minimized with sass.quiet_deps: true in _config.yml though not all warnings are suppressed.
- Use Jekyll’s documentation or Minimal Mistakes docs when in doubt

---

## 🤝 Contributions

If you're part of the TamrielCraft team, or even if you aren't, and want to help improve the site:

- Submit ideas or content through Discord or via Github pull requests
- Add yourself to the credits page (if applicable)
- Help expand posts, galleries, or lore explanations

---

## 🧱 License

While we have a CC BY-NC-SA 4.0 license, this is a WIP repository and the license can and will change. Please do NOT create PRs unless you don't mind the license changing. Your contribution, via commit history, will be maintained.

