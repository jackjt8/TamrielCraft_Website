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
- A modern browser for testing

You can install Ruby via [rubyinstaller.org](https://rubyinstaller.org/) (Windows) or use Homebrew / a version manager on macOS/Linux.

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
	
## 🖼 Gallery Submissions

When contributing new builds or screenshots to the site:

✅ Image Guidelines
| Type       | Resolution       | Max Size                           |
| ---------- | ---------------- | ---------------------------------- |
| Full Image | 3840x2160 (4K)\* | Reasonable size (\~<1MB preferred) |
| Thumbnail  | 1280x720         | **< 400 KB**                       |

*Resolutions below 4K may be accepted if sharp and well-composed.*


## 🖋 Image Captions

To add images with captions, use the custom include:
```
{% include figure_captioned.html
  src="assets/images/.../image.jpg"
  alt="some_alt_text"
  caption="some_caption_text"
%}
```
> Ensure the path is correct, alt text is descriptive, and captions are concise.
> Captions will appear overlaid on the image in the bottom-right corner.

---

## 📝 Notes & Suggestions

- Use meaningful commit messages (e.g., Add post for Anvil update, not Update file)

- Posts should follow the YYYY-MM-DD-title.md format in _posts/

- Site colors, fonts, and layout tweaks can be overridden via _sass/minimal-mistakes-overrides.scss

- Sass warnings are minimized with sass.quiet_deps: true in _config.yml

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

