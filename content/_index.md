---
# Leave the homepage title empty to use the site title
title: "Meng"
date: 2025-01-24
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
        I am currently a PhD student in Physics at The University of Hong Kong. My research direction is cold atoms, with interests in ultracold atomic systems, quantum simulation, and quantum many-body physics.
        
        I aspire for new knowledge and have the passion to pursue new research. I enjoy thinking independently and discussing academic problems with fellows.
    design:
      columns: '1'

  - block: markdown
    id: study-notes
    content:
      title: 'Study Note'
      subtitle: ''
      text: |-
        Selected study notes are shown below. For the full categorized collection, visit [Study Notes](/study-note/).
    design:
      columns: '1'

  - block: collection
    content:
      title: Featured Study Notes
      filters:
        folders:
          - study-note
        featured_only: true
    design:
      view: article-grid
      columns: 2
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
