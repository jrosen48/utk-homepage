# Joshua M. Rosenberg Homepage Archive

This is an archived version of Joshua M. Rosenberg's academic homepage, deployed using GitHub Pages.

## About This Archive

This site contains:
- Academic CV and publications
- Blog posts and writings
- Teaching materials and resources
- Research information

## Deployment

This site is automatically deployed to GitHub Pages using Hugo and GitHub Actions.

### Setup Instructions

1. **Enable GitHub Pages**: Go to repository Settings → Pages → Source: "GitHub Actions"
2. **Push to master branch**: The site will automatically build and deploy
3. **Custom domain** (optional): Add a CNAME file with your domain name

### Local Development

To run this site locally:

```bash
# Install Hugo (macOS)
brew install hugo

# Or install Hugo (other platforms)
# See: https://gohugo.io/installation/

# Clone the repository
git clone [your-repo-url]
cd utk-homepage

# Run local server
hugo server -D

# Build static site
hugo
```

### File Structure

- `content/` - All site content (markdown files)
- `static/` - Static assets (images, PDFs, etc.)
- `themes/hugo-xmin/` - Hugo theme
- `config.toml` - Site configuration
- `.github/workflows/deploy.yml` - GitHub Actions deployment workflow

## Original Site

This is an archived version. For current information, please check:
- [Current Substack](https://joshuamrosenberg.substack.com)
- [Research Group Website](https://makingdatasciencecount.com)

## License

Content is licensed under [CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/) 