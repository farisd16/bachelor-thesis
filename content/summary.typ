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

=== Realized Goals
#par(first-line-indent: 0em)[*Standalone Apollon Editor*]
#par(first-line-indent: 0em)[
  With the version management sidebar users are able to see, create, delete, edit, preview and restore versions (FR1.1 - 1.6). The user is also able to get the diagram embedding link for Git issues and pull requests by clicking on the _Embed_ option in the Share modal (FR1.7). 
]

#par(first-line-indent: 0em)[*Apollon VSCode Extension*]
#par(first-line-indent: 0em)[
  The Apollon VSCode extension provides the user an option to create a new diagram, load and model existing diagrams, save them as files and export for embedding purposes (FR2.1 - 2.4).
]

=== Open Goals
Due to time constraints, we could not implement GitHub authentication in the standalone Apollon editor to support iterative collaboration on a diagram in a Git issue/pull request setting (FR1.8). This would enable the creator of the diagram to allow certain collaborators to publish new versions of the embedded diagram in order to address issues. Currently, collaborators are only able to edit a copy of the embedded diagram.

The limited time frame also prevented us from implementing the Apollon markdown syntax for diagrams, which would enable users to draft diagrams with text in the Apollon VScode extension (FR2.5).

== Conclusion
#TODO[
  Recap shortly which problem you solved in your thesis and discuss your *contributions* here.
]

== Future Work
#TODO[
  Tell us the next steps (that you would do if you have more time). Be creative, visionary and open-minded here.
]