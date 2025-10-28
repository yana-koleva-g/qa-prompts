# 🌐 Deploy QA Prompts Wiki as Website

**Three deployment options: GitHub Pages, Notion, or Simple HTML**

---

## 🚀 Option 1: GitHub Pages (Recommended!)

**Result:** Professional website like https://yourname.github.io/qa-prompts/

### Setup (5 minutes):

#### Step 1: Create GitHub Repository

```bash
# Create new repo on GitHub: "qa-prompts-wiki"
# Then locally:

cd QA-Prompts-Wiki
git init
git add .
git commit -m "Initial QA Prompts Library"
git branch -M main
git remote add origin https://github.com/YOUR-USERNAME/qa-prompts-wiki.git
git push -u origin main
```

#### Step 2: Enable GitHub Pages

1. Go to repo Settings
2. Pages section (left sidebar)
3. Source: `main` branch, `/ (root)` folder
4. Click Save
5. Wait 2-3 minutes
6. Your site: `https://YOUR-USERNAME.github.io/qa-prompts-wiki/`

#### Step 3: Done!

Visit your site! It has:
- ✅ Left sidebar navigation
- ✅ All markdown rendered
- ✅ Copy buttons on code blocks
- ✅ Professional styling
- ✅ Mobile responsive

**Cost:** FREE ✅

---

## 📱 Option 2: Notion (Fastest!)

**Result:** Beautiful Notion workspace with hierarchy

### Setup (10 minutes):

#### Step 1: Create Notion Workspace

1. Open Notion
2. Create new page: "QA Prompts Library"
3. Add icon: 📚

#### Step 2: Import Markdown Files

**Two methods:**

**Method A: Drag & Drop (Easy)**
1. Open each .md file in text editor
2. Copy ALL content
3. Paste into Notion page
4. Notion auto-formats markdown!

**Method B: Import (Bulk)**
1. In Notion, click "..." → Import
2. Select "Markdown"
3. Upload all .md files
4. Notion creates pages automatically

#### Step 3: Organize Structure

Create page hierarchy:
```
📚 QA Prompts Library (main page)
├── ⚡ Quick Reference
├── 📋 Requirements Phase
│   ├── Test Planning
│   └── ...
├── 💻 Development Phase
│   ├── API Tests
│   └── ...
├── 🧪 Testing Phase
│   ├── Functional Tests
│   ├── Security Tests
│   └── ...
└── 🎨 Format Library
    ├── API Tests Format
    └── ...
```

#### Step 4: Create Table of Contents

On main page, type: `/table of contents`

#### Step 5: Share (Optional)

1. Click "Share" (top right)
2. "Publish to web"
3. Get public link
4. Share with team!

**Cost:** FREE (or $8/month for team features)

---

## 💻 Option 3: Simple HTML (No hosting needed!)

**Result:** Local HTML files you can open in browser

### Setup (2 minutes):

#### Convert Markdown to HTML:

```bash
cd QA-Prompts-Wiki

# Install pandoc (one-time)
# Mac:
brew install pandoc

# Ubuntu:
sudo apt install pandoc

# Windows:
# Download from pandoc.org

# Convert all markdown to HTML
for file in *.md **/*.md; do
    pandoc "$file" -o "${file%.md}.html" \
        --standalone \
        --template=_layouts/default.html \
        --metadata title="QA Prompts"
done
```

#### Open in Browser:

```bash
# Mac:
open 00-INDEX.html

# Linux:
xdg-open 00-INDEX.html

# Windows:
start 00-INDEX.html
```

**Navigate** using sidebar menu!

**Cost:** FREE ✅

---

## 🎨 GitHub Pages Custom Styling

Already included! Your site has:

### Features:
- ✅ **Left sidebar** with all sections
- ✅ **Syntax highlighting** for code
- ✅ **Copy buttons** on code blocks
- ✅ **Responsive design** (mobile-friendly)
- ✅ **Professional theme** (blue & dark)
- ✅ **Active link highlighting**
- ✅ **Table styling**
- ✅ **Emoji support** 📚🚀✅

### Customization:

Edit `_layouts/default.html` to change:
- Colors (search for `#3498db`, `#2c3e50`)
- Fonts
- Spacing
- Layout

---

## 📊 Comparison:

| Feature | GitHub Pages | Notion | Simple HTML |
|---------|-------------|---------|-------------|
| **Cost** | FREE | FREE-$8/mo | FREE |
| **Setup Time** | 5 min | 10 min | 2 min |
| **Hosting** | GitHub | Notion | Local only |
| **Sharing** | Public URL | Public/Private | Email files |
| **Search** | Basic | Excellent | Browser find |
| **Team Editing** | Via Git | Built-in | Manual |
| **Mobile** | Yes | Yes | Yes |
| **Professional** | ⭐⭐⭐⭐⭐ | ⭐⭐⭐⭐⭐ | ⭐⭐⭐ |

---

## 🎯 Recommended by Use Case:

### For Company-Wide Use:
→ **GitHub Pages** or **Notion**

**Why:**
- Professional appearance
- Easy sharing
- Team can access anytime
- Version control (GitHub)

---

### For Personal Use:
→ **Notion** or **Simple HTML**

**Why:**
- Quick setup
- Works offline (HTML)
- Easy to organize (Notion)

---

### For External Sharing:
→ **GitHub Pages**

**Why:**
- Public URL
- No account needed to view
- Professional
- Free hosting

---

## 🚀 Quick Deploy: GitHub Pages

**Complete commands:**

```bash
# 1. Navigate to wiki folder
cd QA-Prompts-Wiki

# 2. Initialize git
git init
git add .
git commit -m "🚀 QA Prompts Library"

# 3. Create repo on GitHub.com
# Then connect:
git remote add origin https://github.com/YOUR-USERNAME/qa-prompts-wiki.git
git branch -M main
git push -u origin main

# 4. Enable GitHub Pages in Settings → Pages
# Source: main branch, / (root)

# 5. Done! Visit:
# https://YOUR-USERNAME.github.io/qa-prompts-wiki/
```

**That's it!** Professional website in 5 minutes! 🎉

---

## 💡 Pro Tips:

### For GitHub Pages:

**Custom Domain (Optional):**
```
Settings → Pages → Custom domain
Enter: prompts.yourcompany.com
```

**Auto-Deploy:**
Every git push → Site updates automatically!

---

### For Notion:

**Create Database View:**
```
Create database of all prompts
Filter by: Phase, Cost, Priority
Beautiful organized view!
```

**Add Templates:**
```
Notion templates for common prompts
One-click duplicate and fill!
```

---

### For Simple HTML:

**Zip and Share:**
```bash
zip -r qa-prompts-wiki.zip QA-Prompts-Wiki/
# Email to team
# They extract and open 00-INDEX.html
```

---

## ✅ Post-Deployment Checklist:

- [ ] All pages load correctly
- [ ] Navigation works
- [ ] Code blocks have copy buttons
- [ ] Links work between pages
- [ ] Mobile view works
- [ ] Shared with team
- [ ] Bookmarked main page
- [ ] Added to team docs

---

## 🎉 You're Done!

Your QA Prompts Library is now:
- ✅ Beautiful website
- ✅ Easy to navigate
- ✅ Professional appearance
- ✅ Shareable with team
- ✅ Always accessible

**Start using your prompts! 🚀**

---

## 🆘 Troubleshooting:

**GitHub Pages not showing?**
- Wait 5 minutes after first push
- Check Settings → Pages shows green checkmark
- Try https (not http)

**Notion import issues?**
- Copy/paste content instead of import
- Ensure markdown is valid
- Import one file at a time if bulk fails

**HTML not styled?**
- Ensure `_layouts/default.html` exists
- Check pandoc conversion worked
- Try opening in different browser

---

**Enjoy your professional QA Prompts website! 📚✨**
