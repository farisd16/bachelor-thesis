#import "/utils/todo.typ": TODO

#let blank_circle = box(circle(radius: 4pt, fill: none));

#let filled_circle = box(circle(radius: 4pt, fill: black));

= Summary
This chapter will discuss the current state of the standalone Apollon editor and Apollon VSCode extension in regards to our work. We will go over realized and open goals, so that we can make a conclusion and determine possible future work.

== Status
In order to express the status, we will list functional requirements from @functional-requirements and determine whether they have been fulfilled. See the status in @fr-status, where #filled_circle indicates the requirement is fulfilled, and #blank_circle that the requirement is not fulfilled.

#figure(
  table(
    columns: (auto, auto),
    align: (start, center),
    table.header([*Functional Requirement*], [*Status*]),
    [FR1.1 Create Version],
    [#filled_circle],
    [FR1.2 Delete Version],
    [#filled_circle],
    [FR1.3 Edit Version],
    [#filled_circle],
    [FR1.4 Preview Version],
    [#filled_circle],
    [FR1.5 Restore Version],
    [#filled_circle],
    [FR1.6 See Versions],
    [#filled_circle],
    [FR1.7 Embed Diagram],
    [#filled_circle],
    [FR1.8 Collaborate on Diagram],
    [#blank_circle],
    [],
    [],
    [FR2.1 Create Diagram],
    [#filled_circle],
    [FR2.2 Model Diagram],
    [#filled_circle],
    [FR2.3 Save Diagram],
    [#filled_circle],
    [FR2.4 Export Diagram],
    [#filled_circle],
    [FR2.5 Draft Diagram],
    [#blank_circle]
  ),
  caption: [Status of our functional requirements]
) <fr-status>

\
\

=== Realized Goals
#par(first-line-indent: 0em)[*Standalone Apollon Editor*]
#par(first-line-indent: 0em)[
  With the version management sidebar users are able to see, create, delete, edit, preview and restore versions (FR1.1 - 1.6). The user is also able to get the diagram embedding link for GitHub issues and pull requests by clicking on the _Embed_ option in the Share modal (FR1.7). 
]

#par(first-line-indent: 0em)[*Apollon VSCode Extension*]
#par(first-line-indent: 0em)[
  The Apollon VSCode extension provides the user an option to create a new diagram, load and model existing diagrams, save them as files and export for embedding purposes (FR2.1 - 2.4).
]

=== Open Goals
Due to time constraints, we could not implement GitHub authentication in the standalone Apollon editor to support iterative collaboration on a diagram in a GitHub issue/pull request setting (FR1.8). This would enable the creator of the diagram to allow certain collaborators to publish new versions of the embedded diagram in order to address issues. Currently, collaborators are only able to edit a copy of the embedded diagram.

The limited time frame also prevented us from implementing the Apollon markdown syntax for diagrams, which would enable users to draft diagrams with text in the Apollon VScode extension (FR2.5).

== Conclusion
Through version management and embedding capabilities, this thesis has established an integration of the standalone Apollon editor with Git hosting services such as GitHub, which alleviates the workflow of utilizing UML diagrams in pull requests and issues. It is possible to embed a diagram by pasting a link into a pull request or issue, and then further update it from the standalone Apollon editor by publishing a new version. Version management will also facilitate long term development of a diagram, by providing developers a timeline of versions, and the ability to delete, preview, restore and edit versions.

The VSCode extension helps developers use Apollon diagrams in their documentation, by providing a modelling editor directly in the IDE, as well as saving and exporting capabilities to version diagrams with Git and embed in documentation.

== Future Work
Due to time constraints, two functional requirements have not been fullfiled. This subsection highlights them and explains what they entail.

One of the unfullfilled functional requirements is _Collaborate on Diagram_ (FR 1.8). This would allow developers to create a list of authorized users to collaborate on version management of a diagram when exporting it for embedding purposes. In a pull request or issue, there would be a link for collaborating below the embedded diagram. After clicking the link, collaborators would authenticate with GitHub to prove they are authorized, and would then gain access to the version management of the diagram. This would allow for easier and smoother collaboration. 

The other unfullfilled functional requirement is _Draft Diagram_ (FR 2.5). Developers would be able to create diagrams using a text syntax inspired by PlantUML. The VSCode extension could convert diagrams from this format to the existing Apollon JSON format, so that they are editable in the Apollon editor. Diagrams in such a text syntax would be readable by humans, so reviewers would be able to understand changes in a pull request. Such a syntax would also be readable by LLMs, opening doors to further opportunities.