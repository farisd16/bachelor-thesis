#import "/utils/todo.typ": TODO

= Introduction
The Unified Modeling Language (UML) has become one of the most widely used standards for specifying and documenting information systems @uml-introduction. Developers use UML diagrams to visualize the structure or behavior of a system, playing a important role in software engineering workflows. Most importantly, UML diagrams help developers share a common understanding of the ongoing work @software-engineering. Such diagrams are therefore useful in issues, pull requests and documentation.

Apollon #footnote[https://github.com/ls1intum/Apollon] is a web-based UML editor, developed at TUM, that allows users to create, edit, and share UML diagrams. It is possible to integrate Apollon with other JavaScript applications, such as the interactive learning platform Artemis, but it can also be used through the standalone version @interactive-learning.

== Problem
Apollon is a feature-rich UML editor, as it supports a great variety of diagram types. However, it lacks efficient embedding capabilities, version management and an IDE integration, which may prevent developers from utilizing it in their workflows. 

\

#par(first-line-indent: 0em)[*Embedding capabilities:*]
#par(first-line-indent: 0em)[
  For example, if a developer wants to embed an Apollon diagram into an issue or pull request, they need to use a PNG export of the diagram. Should the diagram be updated, this will not be reflected on the embedded image. Also, the developer can not open the diagram in the standalone Apollon editor through the embedding. Therefore, the developer would have to find the diagram, load it into Apollon, modify it, save it, and update the embedding. If the developer can not find the diagram, they will have to recreate it. This process is cumbersome with a lot of friction and can lead to outdated diagram embeddings, which is counter-productive.
]

\
\

#par(first-line-indent: 0em)[*Version management:*]
#par(first-line-indent: 0em)[
  Currently, users can not track changes made to diagrams and feedback is not linked to a specific version, which makes it more difficult to collaborate and engage in a feedback loop. There is no way to revert to previous versions. If a developer wants to create another version of the diagram, the only way would be to import the diagram into a new file.
]

\

#par(first-line-indent: 0em)[*Local IDE integration:*]
#par(first-line-indent: 0em)[
  Developers are unable to use Apollon within their IDEs such as VSCode or IntelliJ, limiting the efficiency of incorporating UML diagrams into their development processes and documentation. Instead, they have to leave their development environment to use Apollon from their web browser, which presents additional friction.
]

== Motivation
Enabling developers to embed their Apollon diagrams with live updates in issues and pull requests would motivate them to do so, displacing the cumbersome process of maintaining an exported image of the diagram.

Considering that UML modeling is a collaborative activity and plays an important role in the software evolution of model-driven development, version management of diagrams is important for projects that utilize Apollon for creating and maintaining UML models @software-engineering @model-driven-development. Specifically, implementing version management for Apollon would encourage the feedback loop and dissolve the need to create a new file for each version of a diagram. Hence using Apollon as part of model-driven development would become easier.

Integrating Apollon with an IDE such as VSCode or IntelliJ would improve the development workflow by eliminating the need to leave the IDE in order to create diagrams. This directly provides a more convenient setting to create diagrams for documentation purposes, since diagrams can be versioned with Git.

Improving Apollon in these regards is a big step in making it a viable tool for the industry, as modern textual UML notations either lack a state-of-the-art editing environment, diagram types or export/import options @uml-textual-representation.

== Objectives
We aim to implement version management in the standalone Apollon editor. This will open the door for the implementation of the embedding feature for GitHub issues and pull requests, such that the embedding displays the newest version of a diagram.

We will also design an Apollon VSCode extension to provide users with an IDE integration, which supports the workflow of maintaining documentation that contains Apollon UML diagrams.

== Outline
We have started by introducing the problems, then moved on to motivate and shortly explain solutions to these problems, which this thesis aims to implement.

In the next chapter, we will dive into technologies and concepts that are important for the understanding of our proposed solutions.

Subsequently, we will investigate related work, that is, other tools and their approaches to solve the mentioned problems. We will discuss why solving these problems in Apollon is necessary despite other alternatives.

The following chapter deals with the requirements analysis of our proposed work. The requirements analysis consists of functional and nonfunctional requirements, scenarios, use cases, the analysis object model and the dynamic model.

Based on the requirements analysis, we will delve into the system design. This includes our design goals, subsystem decomposition and persistent data management.

Finally, we will conclude with a summary, the status of our work and possible future work.
