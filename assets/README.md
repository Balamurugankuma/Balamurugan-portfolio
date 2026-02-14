# Assets Folder

This folder is for storing additional assets like:

- Favicon files (favicon.ico, favicon-16x16.png, favicon-32x32.png)
- Project screenshots
- Additional images
- Custom fonts (if not using Google Fonts)

## Adding a Favicon

1. Generate a favicon at [favicon.io](https://favicon.io/)
2. Place the generated files in this folder
3. Add these lines to the `<head>` section of `index.html`:

```html
<link rel="icon" type="image/x-icon" href="assets/favicon.ico">
<link rel="icon" type="image/png" sizes="32x32" href="assets/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="16x16" href="assets/favicon-16x16.png">
```
