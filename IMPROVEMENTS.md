# W26 Site Improvements Summary

The W26 site looks visually similar to S25, but includes significant **accessibility, security, and mobile** improvements that benefit all students.

## What Changed (and Why You Might Not See It)

### 1. Accessibility Enhancements ✅

These improvements primarily help students using assistive technologies:

**Keyboard Navigation:**
- Press `Tab` when the site loads - you'll see a "Skip to main content" link appear
- All interactive elements now have clear focus indicators (try tabbing through links)
- Press `Tab` to navigate, `Enter` to click

**Screen Reader Support:**
- Tables now have proper captions and scope attributes
- ARIA labels on navigation and tables
- Semantic HTML with `<time>` elements for dates
- Proper heading hierarchy

**Visual Accessibility:**
- All text meets WCAG AA contrast standards (4.5:1 minimum)
- Better link colors for visibility
- Enhanced focus indicators for keyboard users

### 2. Mobile Responsiveness 📱

**To test these improvements:**
1. Resize your browser window to mobile size (< 768px wide)
2. Or use browser dev tools (F12 → Device toolbar)

**What improves on mobile:**
- Tables scroll horizontally instead of breaking
- Responsive typography (text scales appropriately)
- Better spacing and padding
- Touch-friendly buttons and links

### 3. Modern User Experience 🎨

**Dark Mode Support:**
- If your system is in dark mode, the site respects that preference
- Try: System Preferences → Appearance → Dark

**Reduced Motion:**
- For users who prefer reduced motion (accessibility setting)
- Automatically disables animations

**Better Print Styles:**
- Try printing a page (Cmd+P) - navigation is hidden, content is optimized

### 4. Technical & Security Updates 🔒

**Behind the scenes:**
- Ruby 3.1.6 (updated from 3.0.3) - security patches and performance
- Modern bundler syntax
- Updated dependencies
- Webrick 1.8 (from 1.7)

### 5. New Files Added

```
w26/
├── assets/css/custom.css          # All accessibility & responsive styles
├── _includes/
│   ├── head-custom.html           # Meta tags, skip links
│   └── accessibility-nav.html     # Enhanced navigation
└── IMPROVEMENTS.md                # This file!
```

## How to Test the Improvements

### Keyboard Navigation Test
1. With the site open, press `Tab` repeatedly
2. You should see focus indicators on each interactive element
3. Press `Enter` on a focused link to navigate

### Mobile Test
1. Open browser dev tools (F12)
2. Click the device toolbar icon (or Cmd+Shift+M)
3. Select "iPhone 12 Pro" or similar
4. Navigate through the site - tables should scroll horizontally

### Contrast Test
1. Install a browser extension like "WCAG Color Contrast Checker"
2. Run it on the site - all text should pass WCAG AA

### Screen Reader Test (Optional)
1. Mac: Turn on VoiceOver (Cmd+F5)
2. Navigate the site - you should hear descriptive labels for everything

## Why It Looks Similar

The visual design is intentionally preserved because:
1. The remote theme (`ucsb-cs-course-repos/course-repo-jekyll-theme`) controls most styling
2. Custom CSS adds enhancements without breaking the existing design
3. Students and TAs are familiar with the current look

## Benefits for Your Students

- **Students with disabilities:** Can fully access all course materials
- **Mobile users:** Can comfortably view the site on phones/tablets
- **All students:** Faster load times, better security, print-friendly pages
- **Future-proof:** Modern dependencies that will be supported longer

## Configuration Updates

Updated for Winter 2026:
- ✅ URLs: `https://ucsb-cs24.github.io/w26`
- ✅ Quarter: Winter 2026
- ✅ Lecture times: MW 11:00a - 12:15p
- ✅ Location: BUCHN 1910
- ✅ GitHub org: ucsb-cs24-w26
- ✅ Calendar dates (first day: Jan 5, 2026; final: Mar 18, 2026)

## Next Steps

1. **Update course info:** Edit `_config.yml` to add TAs/ULAs, office hours, lab times
2. **Add content:** Create lecture files in `_lectures/`, assignments in `_lab/`, `_pa/`, `_lp/`
3. **Test accessibility:** Use the tests above to verify everything works
4. **Deploy:** Push to GitHub Pages when ready

## Questions?

See `README.md` for full documentation or `CLAUDE.md` for technical details.

---

**Bottom line:** The site is now more accessible, secure, and mobile-friendly while maintaining the familiar look and feel your students expect.
