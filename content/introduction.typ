#import "/utils/todo.typ": TODO

= Introduction
The Unified Modeling Language (UML) has become one of the most widely used standards for specifying and documenting information systems @uml-introduction. Developers use UML diagrams to visualize the structure or behavior of a system, playing a crucial role in software engineering workflows. Most importantly, UML diagrams help developers share a common understanding of the ongoing work @software-engineering. Such diagrams are therefore useful in issues, pull requests and documentation.

Apollon #footnote[https://github.com/ls1intum/Apollon] is a web-based UML editor, developed at TUM, that allows users to create, edit, and share UML diagrams. It is possible to integrate Apollon with other JavaScript applications, such as the interactive learning platform Artemis, but it can also be used through the standalone version @interactive-learning.

== Problem
Apollon is a feature-rich UML editor, as it supports a great variety of diagram types. However, it lacks efficient embedding capabilities, version management and an IDE integration, which may prevent developers from utilizing it in their workflows. 

*Embedding capabilities*: 
For example, if a developer wants to embed an Apollon diagram into an issue or pull request, they need to use a PNG export of the diagram. Should the diagram be updated, this won't be reflected on the embedded image. Also, the developer can't open the diagram in the standalone Apollon editor through the embedding. Therefore, the developer would have to find the diagram, load it into Apollon, modify it, save it, and update the embedding. If the developer can't find the diagram, they will have to recreate it. This process is cumbersome with a lot of friction and can lead to outdated diagram embeddings, which is counter-productive.

*Version management*:
Currently, users can't track changes made to diagrams and feedback is not linked to a specific version, which makes it more difficult to collaborate and engage in a feedback loop. There is no way to revert to previous versions. If a developer wants to create another version of the diagram, the only way would be to import the diagram into a new file. 

*Local IDE integration:*
Developers are unable to use Apollon within their IDEs such as VSCode or IntelliJ, limiting the efficiency of incorporating UML diagrams into their development processes and documentation. Instead, they have to leave their development environment to use Apollon from their web browser, which presents additional friction.

== Motivation
Enabling developers to embed their Apollon diagrams with live updates in issues and pull requests would motivate them to do so, displacing the cumbersome process of maintaining an exported image of the diagram.

Considering that UML modeling is a collaborative activity and plays an important role in the software evolution of model-driven development, version management of diagrams is crucial for projects that utilize Apollon for creating and maintaining UML models @software-engineering @model-driven-development. Specifically, implementing version management for Apollon would encourage the feedback loop and dissolve the need to create a new file for each version of a diagram. Hence using Apollon as part of model-driven development would become easier.

Integrating Apollon with an IDE such as VSCode or IntelliJ would improve the development workflow by eliminating the need to leave the IDE in order to create diagrams. This directly provides a more convenient setting to create diagrams for documentation purposes, since diagrams can be versioned with Git.

Improving Apollon in these regards is a big step in making it a viable tool for the industry, as modern textual UML notations either lack a state-of-the-art editing environment, diagram types or export/import options @uml-textual-representation.

== Objectives
#TODO[
  Describe the research goals and/or research questions and how you address them by summarizing what you want to achieve in your thesis, e.g. developing a system and then evaluating it.

  Refine this after finishing requirements analysis and system design. If you did the evaluation, you should mention it here.
]

The overarching objective is to motivate developers and students to use Apollon for their UML modeling needs. We will do this by adding version management and a diagram embedding feature for Git pull requests and issues to the standalone Apollon editor. We will also develop a VSCode extension, to support a local IDE integration of the Apollon editor.

With version management in the standalone Apollon editor, it will be possible to:
- Publish new versions of a diagram with their respective title and description.
- Edit the title and description of published versions.
- Delete published versions.
- Preview and restore published versions.

Besides existing sharing options in the standalone Apollon editor, users will be able to embed their diagrams in Git pull requests and issues. The embedded diagrams will always display the latest published version.

Developers will be able to use the Apollon editor directly in their VSCode IDE with the extension. Newly created diagrams from the extension will be of the #emph[.apollon] file type, and the extension will be able to load diagrams from such files. The extension will associate this file type with the JSON type, ensuring compatibility with the standalone Apollon editor, which saves and imports diagrams with the JSON type.

== Outline
#TODO[
  Describe the outline of your thesis
]