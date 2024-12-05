= Objective
The overarching objective is to motivate developers and students to use Apollon for their UML modeling needs. Therefore, we aim to:
+ Implement version management in the standalone Apollon editor 
+ Integrate Apollon with a Git hosting service
+ Integrate Apollon with an IDE and documentation tool
@analysis-object-model illustrates an Analysis Object Model of the proposed work.

#figure(
  image("/figures/proposal/analysis-object-model.png", fit: "cover"),
  caption: [Analysis Object Model of implementing version control in Apollon, integrating Apollon diagrams with a Git hosting service and an IDE],
) <analysis-object-model>


== Implement Version Management <ch-version-management>
In the standalone version of Apollon, users will be able to toggle the visibility of a sidebar which displays a list of versions of a diagram. Each version will have a name, tag and short description. By clicking on a sidebar item for a given version, the user can see a preview of the diagram and its feedback.

The sidebar will also have a "Publish Version" button so that the user can create a new version of the diagram given the current state of the diagram. Each sidebar item will have its "Revert" button, to revert the state of the diagram to the given version, and a "Delete" button, to delete the given version from the version history.

== Integrate Apollon with a Git Hosting Service <ch-git-hosting>
The Export dropdown in Apollon will have a new item, allowing a user to export a link for the sake of embedding the diagram with live updates. This means that the embedding will always display the newest version of the diagram. 

The user may also choose to export another link, which redirects to Apollon, where collaborators can make further changes to the diagram. The user will be able to choose whether collaborators need to authenticate or not, for example with a service such as GitHub. This will especially be convenient in an issue/pull request setting. Moreover, the user may choose to synchronize feedback from the Git hosting service with feedback on Apollon. @git-integration illustrates the proposed integration with a Git hosting service.

#figure(
  image("/figures/proposal/git-integration.png", fit: "cover"),
  caption: [High-level workflow of using an Apollon diagram in an issue/pull request.],
) <git-integration>

== Integrate Apollon with an IDE and Documentation <ch-docs>
We will develop a VSCode extension, which enables a developer to use Apollon from his IDE, without leaving the development environment. This will be achieved by simply integrating the Apollon library into the extension. In order to open a diagram, the developer will need two files:

- *{FILENAME}.apollon*: Structured textual format focusing on semantics, inspired by PlantUML #footnote[https://plantuml.com/] and Mermaid #footnote[https://mermaid.js.org/intro/] syntax.
- *.{FILENAME}.meta.apollon*: Companion metadata containing IDs, positions and other less important information

The extension will be able to generate metadata from the structured layout, and vice versa. This will enable the developer to version his diagram with Git, swiftly create diagrams with a straight-forward syntax, modify the diagram with Apollon from the IDE, and reviewers or other collaborators to understand the diagram just by looking at the structured format. 

Versioning the diagram with Git is suitable for developers who wish to use Apollon diagrams in documentation that is part of their repository. In order to fully streamline integration of Apollon diagrams in documentation, we will develop a plugin for Sphinx#footnote[https://www.sphinx-doc.org/], a documentation tool, which will allow a developer to directly embed an Apollon file, without needing to manually convert it to PNG/SVG. @docs-integration illustrates the proposed integration with VSCode.

#figure(
  image("/figures/proposal/docs-integration.png", fit: "cover"),
  caption: [High-level workflow of generating a Apollon diagram with a VSCode extension and structured format. The diagram can be embedded in documentation.],
) <docs-integration>