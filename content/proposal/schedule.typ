#pagebreak(weak: true)
= Schedule
The bachelor thesis will start on August 14th, 2024 and will be completed by December 14th, 2024. The following schedule outlines the proposed timeline for the thesis:

- *Iteration 1 (Week 1-5)*: Implement Version Management in the standalone Apollon Editor, as described in @ch-version-management
  - Design a sidebar for version management in the editor that shows a list of versions, supports saving new versions, and allows users to preview each saved version
  - Implement server-side version management

- *Iteration 2 (Week 6-10)*: Integrate Apollon with a Git Hosting Service, as described in @ch-git-hosting
  - In the standalone editor, add a new item to the Export dropdown and design a  modal, for exporting a link to the diagram with real-time updates, with the possibility of exporting an additional link to open the diagram in Apollon
  - Integrate GitHub authentication into standalone Apollon so that only authorized collaborators can modify the diagram once they open it through the exported link if the user wishes so
  - Implement functionality of maintaining exported embeddings of diagrams with live updates

- *Iteration 3 (Week 11-15)*: Integrate Apollon with an IDE and Documentation Tool, as described in @ch-docs
  - Design a structured textual format for diagrams
  - Design the VSCode extension for using Apollon
  - Implement the conversion of diagram metadata to the structured format
  - Implement the conversion of the structured format to diagram metadata
  - Integrate diagrams in their structured format into Sphinx documentation

- *Iteration 4 (Week 16-17)*: Finalizing
  - Address collected minor deficiencies and bugs of the editor that were encourented along the way