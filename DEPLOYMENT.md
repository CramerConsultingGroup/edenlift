# Deployment Guide

## Eden Lift - Deployment Instructions

This guide will help you deploy the Eden Lift website to various platforms.

## 🚀 GitHub Pages (Recommended)

GitHub Pages is the easiest way to deploy this static website.

### Steps:

1. **Go to your repository on GitHub**
   - Navigate to: https://github.com/CramerConsultingGroup/edenlift

2. **Open Settings**
   - Click on **Settings** tab
   - Scroll down to **Pages** in the left sidebar

3. **Configure GitHub Pages**
   - Under **Source**, select: **Deploy from a branch**
   - Under **Branch**, select: **main** (or the branch you want to deploy)
   - Select folder: **/ (root)**
   - Click **Save**

4. **Wait for deployment**
   - GitHub will build and deploy your site (usually takes 1-2 minutes)
   - Your site will be available at: `https://cramerconsultinggroup.github.io/edenlift/`

5. **Custom Domain (Optional)**
   - If you have a custom domain, add it in the **Custom domain** field
   - Example: `edenlift.org`
   - Add a CNAME record in your domain DNS settings pointing to `cramerconsultinggroup.github.io`

## 🌐 Netlify

Netlify offers continuous deployment with every push to your repository.

### Steps:

1. **Sign up at [Netlify](https://www.netlify.com/)**

2. **New Site from Git**
   - Click **Add new site** → **Import an existing project**
   - Choose **GitHub** and authorize Netlify

3. **Configure Build Settings**
   - Repository: `CramerConsultingGroup/edenlift`
   - Branch to deploy: `main`
   - Build command: (leave empty)
   - Publish directory: `/` (root)

4. **Deploy!**
   - Click **Deploy site**
   - Your site will be live at a random Netlify URL (e.g., `random-name-123.netlify.app`)
   - You can customize the subdomain or add a custom domain in settings

## ▲ Vercel

Vercel provides fast deployment with excellent performance.

### Steps:

1. **Sign up at [Vercel](https://vercel.com/)**

2. **Import Project**
   - Click **Add New...** → **Project**
   - Import from **GitHub**
   - Select `CramerConsultingGroup/edenlift`

3. **Configure Project**
   - Framework Preset: **Other**
   - Root Directory: `./`
   - Build Command: (leave empty)
   - Output Directory: (leave empty)

4. **Deploy**
   - Click **Deploy**
   - Your site will be live at a Vercel URL (e.g., `edenlift.vercel.app`)
   - Configure custom domain in project settings

## 📦 Other Static Hosting Services

The Eden Lift website is a static site and can be deployed to any static hosting service:

- **Cloudflare Pages**: Similar to Netlify/Vercel
- **GitLab Pages**: Similar to GitHub Pages
- **AWS S3 + CloudFront**: For enterprise deployments
- **Azure Static Web Apps**: Microsoft's static hosting
- **Google Firebase Hosting**: Google's hosting platform

## 🧪 Local Testing

Before deploying, always test locally:

```bash
# Clone the repository
git clone https://github.com/CramerConsultingGroup/edenlift.git
cd edenlift

# Start a local server
python3 -m http.server 8000
# or
npx http-server
# or
php -S localhost:8000

# Open browser to http://localhost:8000
```

## ✅ Deployment Checklist

Before deploying to production:

- [ ] Test all pages load correctly
- [ ] Verify all navigation links work
- [ ] Check responsive design on mobile
- [ ] Validate HTML and CSS
- [ ] Test on different browsers
- [ ] Ensure all images and assets load
- [ ] Check for broken links
- [ ] Review content for accuracy
- [ ] Configure custom domain (if applicable)
- [ ] Set up SSL/HTTPS (most platforms do this automatically)

## 🔧 Troubleshooting

### Pages not loading on GitHub Pages?
- Ensure the branch name is correct in Settings → Pages
- Check that the `index.html` file is in the root directory
- Wait a few minutes for GitHub to build and deploy

### 404 errors?
- Verify all file paths are relative (e.g., `../assets/css/style.css`)
- Check that all referenced files exist in the repository
- Ensure file names match exactly (case-sensitive on some platforms)

### Styling not applied?
- Check browser console for CSS loading errors
- Verify the stylesheet path is correct
- Clear browser cache and refresh

## 📧 Support

For deployment issues or questions:
- Create an issue: https://github.com/CramerConsultingGroup/edenlift/issues
- Email: info@edenlift.org

---

**Happy Deploying! 🚀**
