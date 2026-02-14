# 📚 Complete Deployment Guide

This guide will walk you through deploying your portfolio website step-by-step.

## 🎯 Choose Your Deployment Method

### Method 1: GitHub Pages (Recommended for Beginners)

#### Step 1: Create GitHub Repository

1. Go to [github.com](https://github.com) and sign in
2. Click the **"+"** icon in top right → **"New repository"**
3. **Repository name**: Choose one:
   - `portfolio` (will be at: `https://balamurugankuma.github.io/portfolio`)
   - `balamurugankuma.github.io` (will be at: `https://balamurugankuma.github.io`)
4. **Visibility**: Public
5. **Do NOT** initialize with README (we already have one)
6. Click **"Create repository"**

#### Step 2: Upload Files

**Option A: Upload via GitHub Website (Easiest)**

1. On your new repository page, click **"uploading an existing file"**
2. Drag and drop ALL files from this folder:
   - `index.html`
   - `README.md`
   - `LICENSE`
   - `.gitignore`
3. Add commit message: "Initial commit - Portfolio website"
4. Click **"Commit changes"**

**Option B: Using Git Commands**

```bash
# Navigate to this folder in terminal
cd /path/to/portfolio-deploy

# Initialize git repository
git init

# Add all files
git add .

# Commit files
git commit -m "Initial commit - Portfolio website"

# Add remote repository (replace with your repo URL)
git remote add origin https://github.com/Balamurugankuma/portfolio.git

# Push to GitHub
git branch -M main
git push -u origin main
```

#### Step 3: Enable GitHub Pages

1. Go to your repository on GitHub
2. Click **"Settings"** (top menu)
3. Click **"Pages"** (left sidebar)
4. Under "Source":
   - Select **"Deploy from a branch"**
   - Branch: **main**
   - Folder: **/ (root)**
5. Click **"Save"**
6. Wait 2-3 minutes
7. Your site will be live! GitHub will show the URL at the top of the Pages settings

#### Step 4: Access Your Website

- If named `portfolio`: `https://balamurugankuma.github.io/portfolio`
- If named `balamurugankuma.github.io`: `https://balamurugankuma.github.io`

---

### Method 2: Netlify (Super Fast Deployment)

#### Step 1: Sign Up

1. Go to [netlify.com](https://netlify.com)
2. Click **"Sign up"**
3. Sign up with GitHub (recommended)

#### Step 2: Deploy

**Option A: Drag & Drop**

1. Click **"Add new site"** → **"Deploy manually"**
2. Drag the entire `portfolio-deploy` folder onto the upload area
3. Wait for deployment (usually 30 seconds)
4. Your site is live! Netlify will give you a URL like `random-name-123.netlify.app`

**Option B: Connect GitHub**

1. Push your code to GitHub first (see Method 1 steps)
2. On Netlify, click **"Add new site"** → **"Import an existing project"**
3. Choose **"GitHub"**
4. Select your repository
5. Click **"Deploy site"**
6. Automatic deployments on every push!

#### Step 3: Custom Domain (Optional)

1. Click **"Domain settings"**
2. Click **"Add custom domain"**
3. Enter your domain (if you have one)

---

### Method 3: Vercel (Developer-Friendly)

#### Step 1: Sign Up

1. Go to [vercel.com](https://vercel.com)
2. Click **"Sign Up"**
3. Sign up with GitHub

#### Step 2: Deploy

1. Click **"Add New..."** → **"Project"**
2. Click **"Import"** next to your repository
3. Click **"Deploy"**
4. Your site is live in seconds!

---

### Method 4: Render (Free Static Sites)

#### Step 1: Sign Up

1. Go to [render.com](https://render.com)
2. Sign up with GitHub

#### Step 2: Deploy

1. Click **"New +"** → **"Static Site"**
2. Connect your GitHub repository
3. Settings:
   - **Name**: portfolio
   - **Build Command**: (leave empty)
   - **Publish Directory**: (leave as `.`)
4. Click **"Create Static Site"**
5. Wait for deployment

---

## 🔧 Troubleshooting

### Problem: Site not showing up after enabling GitHub Pages

**Solution**: 
- Wait 2-5 minutes for initial deployment
- Check the Pages settings - it should show a green success message
- Try accessing the URL in an incognito/private window

### Problem: Styles not loading

**Solution**: 
- Make sure the file is named `index.html` (not `portfolio.html`)
- Clear your browser cache (Ctrl+Shift+R or Cmd+Shift+R)

### Problem: Can't push to GitHub

**Solution**:
```bash
# Make sure you're in the right directory
pwd

# Check git status
git status

# If remote already exists, remove and re-add
git remote remove origin
git remote add origin https://github.com/Balamurugankuma/portfolio.git
git push -u origin main
```

---

## 🎨 Customization Tips

### Change Colors

Edit these CSS variables in `index.html`:

```css
:root {
    --accent: #0071e3;  /* Change to your preferred color */
    --accent-hover: #0077ed;
}
```

### Add More Projects

Find the "Projects Section" in `index.html` and add more project cards following the existing format.

### Update Contact Info

Search for the contact section and update any information you want to change.

---

## 📱 Share Your Website

Once deployed, share your portfolio:

- Add to LinkedIn profile
- Add to Instagram bio
- Include in your resume
- Share on Twitter/X
- Add to your email signature

---

## 🆘 Need Help?

- **GitHub Pages**: [https://pages.github.com/](https://pages.github.com/)
- **Netlify Docs**: [https://docs.netlify.com/](https://docs.netlify.com/)
- **Vercel Docs**: [https://vercel.com/docs](https://vercel.com/docs)

---

## ✅ Deployment Checklist

- [ ] Files uploaded to GitHub
- [ ] GitHub Pages enabled
- [ ] Website is accessible via URL
- [ ] All sections load correctly
- [ ] Dark/Light mode works
- [ ] Contact links work (WhatsApp, Email, LinkedIn, etc.)
- [ ] Mobile responsive (test on phone)
- [ ] Shared on social media

---

**Congratulations! Your portfolio is now live! 🎉**
