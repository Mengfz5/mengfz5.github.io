---
# Leave the homepage title empty to use the site title
title: ""
date: 2022-10-24
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
        url: /uploads/Resume.pdf
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
  
  - block: markdown
    content:
      title: 'Presentation ppt'
      subtitle: ''
      text: |-
        - My first presentation(date:1.21). Click to view the [PDF document](/files/presentation.pdf).
        - My second presentation(date:3.1). Click to view the [PDF document](/files/presentation2.pdf).
    design:
      columns: '1'
  
  - block: collection
    id: papers
    content:
      title: Research Presentation
      filters:
        folders:
          - publication
        featured_only: true
    design:
      view: article-grid
      columns: 2

---
