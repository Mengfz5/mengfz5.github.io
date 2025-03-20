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
        I'm now working on symmetry analysis of unconventional superconductor aiming to conceive the G-L free energy with the coupling of triplet superconductors and dipole interaction.  In this project, I use group theory to analyse the symmetry of system and study the microscopic mechanism using Green's function method. Besides, I write python code to help me calculate the C-G coefficients for decomposition of reducible representation of the symmetry group.
        
        I aspire for new knowledge and have the passion to pursue new researches. I have the ability to think and learn independently and enjoy discussing academic problems with fellows.
    design:
      columns: '1'

  - block: markdown
    content:
      title: 'Research Note'
      subtitle: ''
      text: |-
        ##Symmetry analysis for the free energy of superconductors. [click to see the note](/notes/note1.pdf)
         ###Abstract
         **This note explores the symmetry analysis of high-temperature superconductors using group theory, focusing on the Ginzburg-Landau free energy functional. We derive the order parameter transformations under the symmetry group \(G = G_0 \times U(1) \times T\) and analyze the decomposition of tensor products of irreducible representations, such as \(E_g \otimes E_g\) and \(E_1 \otimes E_2\), to identify invariant terms in the free energy. Both orthogonal and projection operator methods are employed to construct basis functions for irreducible representations, with explicit computational implementations provided. The note also discusses the generalization to triplet states in weak spin-orbit coupling for orthorhombic and tetragonal symmetries. Key questions regarding matrix representations, spin-orbit coupling effects, and gap functions are highlighted for further investigation. This work provides a systematic framework for understanding the symmetry constraints on the free energy functional in superconducting systems.**
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
