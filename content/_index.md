---
# Leave the homepage title empty to use the site title
title: "Meng's homepage"
date: 2025-03-01
type: landing

design:
  # Default section spacing
  spacing: "6rem"

sections:
  - block: resume-biography-3
    content:
      # Choose a user profile to display (a folder name within `content/authors/`)
      username: admin
      text: ""
      # Show a call-to-action button under your biography? (optional)
      button:
        text: Download CV
        url: uploads/resume.pdf
    design:
      css_class: dark
      background:
        color: black
        image:
          # Add your image background to `assets/media/`.
          filename: stacked-peaks.svg
          filters:
            brightness: 1.0
          size: cover
          position: center
          parallax: false
  - block: markdown
    content:
      title: '📚 My Research Interests'
      subtitle: ''
      text: |-
        I'm now working on symmetry analysis of unconventional superconductor aiming to conceive the G-L free energy with the coupling of triplet superconductors and dipole interaction.  In this project, I use group theory to analyse the symmetry of system and study the microscopic mechanism using Green's function method. Besides, I write python code to help me calculate the C-G coefficients for decomposition of reducible representation of the symmetry group.
        
        I aspire for new knowledge and have the passion to pursue new researches. I have the ability to think and learn independently and enjoy discussing academic problems with fellows.
    design:
      columns: '1'
  - block: collection
    id: section-1
    content:
      title: Section 1
      subtitle: A subtitle
      text: Add any **markdown** formatted content here - text, images, videos, galleries - and even HTML code!
      # Display content from the `content/post/` folder
      filters:
        folders:
          - post
    design:
      # Choose how many columns the section has. Valid values: '1' or '2'.
      columns: '1'
      # Choose your content listing view - here we use the `showcase` view
      view: showcase
      # For the Showcase view, do you want to flip alternate rows?
      flip_alt_rows: true

---
