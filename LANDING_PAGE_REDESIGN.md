# Landing Page Redesign - Winter 2026

## What's New

The landing page has been completely redesigned with a modern, student-friendly layout that's visually distinct from the S25 site.

## Key Improvements

### 1. **Hero Section** (NEW!)
- Eye-catching gradient header with course title
- Immediate visibility of lecture time and location
- Professional, modern look that grabs attention
- Winter 2026 themed with UCSB colors (blue gradient)

### 2. **Quick Links Cards** (NEW!)
- 4 prominent cards for instant navigation:
  - 📚 **Course Info** - Syllabus, Staff, Calendar
  - 💻 **Assignments** - Labs, Projects, LeetCode
  - 👥 **Get Help** - Office Hours, Ed Discussion
  - 📖 **Resources** - GDB Cheatsheet, VisuAlgo
- Hover effects for interactivity
- Mobile-responsive grid layout

### 3. **About Section** - Completely Restructured
- **Before:** Dense paragraph with image floating to the right
- **After:**
  - Clear, scannable bullet points with checkmarks
  - Side-by-side layout (text + visualization)
  - Highlighted "goal" callout box
  - Better visual hierarchy

### 4. **Course Staff** - Redesigned
- **Before:** Plain list of names
- **After:**
  - Beautiful card-based grid layout
  - Clear role labels (Instructor, TAs, ULAs)
  - Office hours prominently displayed
  - Link to full staff page with photos

### 5. **Content Sections** - Enhanced Organization
Each major section (Lectures, Labs, PAs, LeetCode) now has:
- 📖 Emoji icons for quick visual identification
- Clear section headers with descriptions
- Improved spacing and readability
- Consistent card styling

### 6. **Visual Design**
- **Color Scheme:** UCSB blues (#003660, #00509e) with warm accents
- **Typography:** Clear hierarchy, better line spacing
- **Spacing:** Generous whitespace for easier scanning
- **Cards:** Subtle shadows and hover effects
- **Responsive:** Perfect on desktop, tablet, and mobile

### 7. **Student-Centered UX**
- **Fast Navigation:** Quick links at the top for common tasks
- **Clear Structure:** Sections organized by student workflow
- **Visual Cues:** Icons and colors guide attention
- **Accessibility:** All improvements maintain WCAG AA compliance

## Visual Comparison

### Old Layout (S25)
```
[Course Title]
[Long paragraph with floating image]
- Bullet list of staff
- Sections with minimal styling
- Calendar at bottom
```

### New Layout (W26)
```
[HERO SECTION - Gradient Blue Header]
  CS24: Data Structures & Algorithms
  MW 11:00a-12:15p • BUCHN 1910

[QUICK LINKS - 4 Card Grid]
  📚 Course Info | 💻 Assignments | 👥 Get Help | 📖 Resources

[ABOUT - Side-by-side]
  Feature bullets + Image + Highlighted goal

[STAFF - Card Grid]
  Instructor | TAs | ULAs (all in styled cards)

[CONTENT SECTIONS - With Icons & Descriptions]
  📖 Lectures
  🔬 Lab Assignments
  💻 Programming Projects
  🎯 LeetCode Practice
  👥 Office Hours Calendar

[FOOTER]
```

## Mobile Responsiveness

The new design is fully responsive:
- **Desktop (>768px):** Multi-column grid layouts
- **Tablet (768px):** Adaptive grids
- **Mobile (<480px):** Single-column stack with optimized spacing

## Distinctive Features vs S25

1. **Hero section** - Immediately distinguishes W26 from S25
2. **Quick links cards** - New feature not in S25
3. **Modern card-based design** - vs plain text lists
4. **Visual icons** - Make sections instantly recognizable
5. **Color gradient** - Creates visual interest
6. **Better hierarchy** - Clearer information architecture

## Technical Details

**New Files:**
- `index.md` - Completely rewritten structure
- `assets/css/landing.css` - Custom landing page styles (~450 lines)

**Updated Files:**
- `_includes/head-custom.html` - Added landing.css link

**Preserved:**
- All functionality from S25
- All existing table includes
- Accessibility standards (WCAG AA)
- Remote theme compatibility

## Try It Out

Restart Jekyll and visit the homepage:
```bash
./jekyll.sh
```

Then navigate to: http://localhost:4000/w26

### Things to Test:
1. ✅ **Quick links work** - Click each card link
2. ✅ **Responsive design** - Resize browser window
3. ✅ **Hover effects** - Hover over cards and links
4. ✅ **Anchor links** - Click "Labs" in quick links → jumps to labs section
5. ✅ **Mobile view** - Open dev tools, switch to mobile device

## Color Palette

- **Primary Blue:** #003660 (UCSB Navy)
- **Secondary Blue:** #00509e (Brighter accent)
- **Light Gray:** #f8f9fa (Backgrounds)
- **Border Gray:** #dee2e6
- **Text Gray:** #6c757d
- **Accent Yellow:** #fef3c7 (Highlight boxes)

## Student Benefits

1. **Faster navigation** - Quick links get to common pages in 1 click
2. **Better first impression** - Professional, modern design
3. **Easier to scan** - Clear sections with icons
4. **More informative** - Section descriptions explain what's what
5. **Mobile-friendly** - Works great on phones/tablets
6. **Visually appealing** - More engaging than plain text

---

**Result:** A modern, student-friendly landing page that's visually distinct from S25 while maintaining all functionality and accessibility standards!
