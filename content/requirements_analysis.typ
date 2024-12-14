#import "/utils/todo.typ": TODO

#let pseudoheading(body) = {
  set par(first-line-indent: 0em)
}

= Requirements Analysis
This chapter presents a detailed Requirements Analysis for the development of the proposed embedding and version management features of the standalone Apollon editor and the Apollon VSCode extension. The analysis is systematically organized based on the “Requirements Analysis Document Template” by Bruegge and Dutoit, ensuring a comprehensive and methodical approach @bruegge2004object. We start with an overview of the purpose and objectives of the proposed features and extension, marking the first step for establishing requirements. Then, we categorize the requirements into functional and nonfunctional requirements, according to the FURPS+ model. FURPS stands for Functionality, Usability Reliability, Performance and Supportability, and was presented by Grady and Caswell @grady1987furps. The "+" indicates additional subcategories that were introduced later on @grady1992furps. The chapter concludes with system modeling.

== Overview
The purpose of our proposed embedding feature for the standalone Apollon editor is to provide users with a seamless Git integration, in order to motivate the usage of UML diagrams in issues and pull requests. This results in a collaborative setting, where diagrams may need to be iteratively updated, which is facilitated by version management. The Apollon VSCode extension enables an IDE integration of Apollon, to assist developers with creating and maintaining UML diagrams for documentation purposes.

The goal is to take steps forward in the direction of making Apollon a viable tool for students and the industry as a solution for their UML modeling needs. A successful outcome for this project is positive feedback for new features and an increase in usage of Apollon.

== Requirements

This section delves into the functional and nonfunctional requirements of the proposed work, in order to lay foundations for the design and implementation of the project. 

=== Functional Requirements <functional-requirements>
This subsection defines the functional requirements (FRs) of our work. Functional requirements describe the interactions between the system and its environment independent of its implementation @bruegge2004object. We can use them to ensure that the designed system posseses the intended functionality.

\

#par(first-line-indent: 0em)[*Standalone Apollon Editor*:]
- FR1.1 *Create Version*: The user can create a new version of their diagram.
- FR1.2 *Delete Version*: The user can delete existing versions of their diagram.
- FR1.3 *Edit Version*: The user can edit the description and title of existing versions of their diagram.
- FR1.4 *Preview Version*: The user can preview existing versions of their diagram.
- FR1.5 *Restore Version*: The user can restore an existing version of their diagram while previewing it.
- FR1.6 *See Versions*: The user can see a list of existing versions of their diagram, each version having a title and description.
- FR1.7 *Embed Diagram*: The user can embed their diagram in a GitHub issue/pull request. The embedding always displays the newest version of the diagram.
- FR1.8 *Collaborate on Diagram*: After the diagram is embedded in a GitHub issue/pull request, authorized collaborators can open the embedded diagram in the standalone Apollon editor and make changes.

\

#par(first-line-indent: 0em)[*Apollon VSCode Extension*:]
- FR2.1 *Create Diagram*: The user can create a new diagram. The extension generates a file with the _.apollon_ extension in which the diagram is stored.
- FR2.2 *Model Diagram*: The user can open diagrams from _.apollon_ files in the Apollon modeling editor and make changes.
- FR2.3 *Save Diagram*: The user can save the state of the diagram from the Apollon modeling editor to the belonging _.apollon_ file.
- FR2.4 *Export Diagram*: The user can export the state of the diagram from the Apollon modeling editor for embedding purposes.
- FR2.5 *Draft Diagram*: The user can create diagrams using a textual syntax. The extension is able to convert such syntax to a _.apollon_ file.

=== Nonfunctional Requirements <nonfunctional-requirements>
This subsection defines the nonfunctional requirements (NFRs) of our work. Nonfunctional requirements describe aspects of the system that are not directly related to the functional behavior of the system. They include a broad variety of requirements that apply to many different aspects of the system, from usability to performance @bruegge2004object.

\

- NFR1 *Usability*: The user should be able to create a new version with no more than two clicks in the standalone Apollon editor.

- NFR2 *Usability*: The user should be able to acquire the embedding link with no more than two clicks in the standalone Apollon editor.

- NFR3 *Reliability*: The embedding in an issue/pull request should always display the newest version of the diagram.

- NFR4 *Adaptability*: Users that created diagrams before the introduction of version management in the standalone Apollon editor should be able to continue working on them.

- NFR5 *Portability*: The Apollon VSCode extension should also be available for VSCodium #footnote[https://vscodium.com/]. 

== System Models
This section showcases models that visualize our system's functionality, structure, behavior and user interaction. We will examine detailed scenarios, the use case model, the Analysis Object Model, a dynamic model and UI mockups.

=== Scenarios
The following subsection displays a set of scenarios which depict practical interactions of a user with our new features and IDE extension.

\

#par(first-line-indent: 0em)[*Scenario 1: Embedding a Diagram in a Pull Request*]
#par(first-line-indent: 0em)[
  Felix, a developer that works on Artemis, has implemented a new feature and would like to create a pull request. In order to visualize the changes to the system his new feature has made, he intends on creating a UML diagram and embedding it in his pull request.
]

Felix opens the standalone Apollon editor in his browser and starts designing his diagram. Once he is done, Felix clicks on the _Share_ item in the navigation bar of the editor, and selects the _Embed_ option. The editor has copied the embedding link to his clipboard. He then proceeds to open the pull request, and pastes the embedding. Now, the latest version of Felix's diagram is visible in the pull request.

Max, another developer, requests changes on the pull request. Due to these changes, the UML diagram has to be adjusted. Felix opens his standalone Apollon editor, makes the needed changes to the diagram and publishes a new version. The diagram in the pull request is automatically updated to the newly published version. Max takes a look at the pull request again, and approves it after seeing that the code has been adjusted as he requested, and that the system looks as desired according to the embedded diagram.

\

#par(first-line-indent: 0em)[*Scenario 2: Embedding a Diagram in Documentation*]
#par(first-line-indent: 0em)[
  Bob, a developer who is working with his team on building software, has made changes and therefore needs to update the documentation. In order to visualize the system properly, he wants do embed a UML diagram in the documentation.
]

Bob downloads the Apollon extension for VSCode, and then clicks on Apollon's icon in the activity bar. After the sidebar of the extension pops up, he types in the name of the diagram in the input field for the _New diagram name_, selects the type of the new diagram from a dropdown, and clicks on the _Create new diagram_ button. The extension creates a _.apollon_ file for his diagram, and opens the Apollon editor. Once Bob is done modeling his diagram, he clicks on the _Save_ button in the editor to save his changes in the _.apollon_ file, and finally clicks the _Export_ button, to export his diagram as an SVG file, which he embeds in the documentation.

The diagram is now being versioned as part of the Git repository. After some time, Bob makes further changes, such that the diagram in the documentation needs to be updated again. He again opens Apollon's sidebar by clicking on the activity bar icon, finds the diagram in the dropdown of existing diagrams, and clicks on the _Load diagram_ button. The extension opens the diagram in the Apollon editor. Bob models the diagram accordingly, clicks on the _Save_ and _Export_ buttons. He embeds the SVG file in the documentation.

\

#par(first-line-indent: 0em)[*Scenario 3: Drafting a Diagram (Visionary)*]
#par(first-line-indent: 0em)[
  Eve, a developer, is in a rush, and would like to create a UML diagram as soon as possible as part of her changes to documentation. She has already downloaded the Apollon VSCode extension, so she creates a file _diagram.apollon.draft_, and using Apollon's textual syntax, creates a UML diagram with text. She opens this diagram in the modeling editor by clicking the _Load diagram_ button in the extension sidebar, sees that she likes it, and exports it as an SVG in order to use it for her documentation. Finally Eve creates a pull request with her changes.
]

Adam, another developer working with Eve, decides to review the pull request. He is also familiar with Apollon's syntax, and just by looking at Eve's _diagram.apollon.draft_, he can understand how the diagram looks. Adam approves the pull request.

=== Use Case Model
Use case modeling helps capture the functional requirements of a system. Use cases focus on the behavior of the system from an external point of view. A use case describes a function provided by the system that yields a visible result for an actor @bruegge2004object.

The intended users of the standalone Apollon editor and the Apollon VSCode extension are students and developers from the industry. Both types of users use our proposed work in the same way, so we will call them *Developer*. @use-case-model shows the use case diagram of proposed features in the standalone Apollon editor and the Apollon VSCode extension.

One approach to using version management in the standalone Apollon editor is to _Address Diagram Feedback_. The source of the feedback is irrelevant for the use case, but this is useful in a Git setting, after the developer performed the _Embed Diagram_ use case (FR1.7). The developer can then _Iterate with Version Management_(FR1.1 - 1.6), in order to end the feedback loop by publishing a new version.

Another use case is _Maintain Diagram for Docs_. This use case implies that the _Export Diagram_ use case (FR2.4) will be undertaken, so that the developer can embed the diagram in documentation. In order to achieve this, the developer has the _Model Diagram_, _Save Diagram_ and _Draft Diagram_ use cases (FR 2.1 - 2.3, FR 2.5) at their disposal.

This use case model showcases the actions a developer can perform in the standalone Apollon editor using the version management and embedding features, as well as with the Apollon VSCode extension.

#figure(
  image("/figures/use-case-model/use-case-model.svg"),
  caption: [Use case diagram of proposed features in the standalone Apollon editor and the Apollon VSCode extension],
) <use-case-model>

=== Analysis Object Model
The analysis object model describes the application domain concepts that the system manipulates and the user-visible interfaces of the system. It is depicted with UML class diagrams, includes classes, attributes, and operations @bruegge2004object. @analysis-object-model shows the Analysis Object Model of our proposed features of the standalone Apollon editor and the Apollon VSCode extension. The analysis object model is split into two tightly coupled parts.

#figure(
  image("/figures/analysis-object-model/analysis-object-model.svg"),
  caption: [Analysis object model of proposed features in the standalone Apollon editor and the Apollon VSCode extension],
) <analysis-object-model>

In the bottom right portion of the analysis object model, the _Developer_ can create a diagram with the _IDE_. This is made possible by the _openUMLEditor()_, _modelDiagram()_ and _draftDiagram()_ operations. Using the _exportDiagram()_ operation, the developer is then able to embed a diagram into _Documentation_. This class is extended by the _Thesis_, _Technical Documentaion_ and _Knowledge Base_ subclasses.

In the top left part of the analysis object model, the _Developer_ is able to create a diagram with the _UML Diagram Editor_. In order to facilitate version management, this class provides the _createDiagramVersion()_, _deleteDiagramVersion()_, _editDiagramVersion()_, _previewDiagramVersion()_ and _restoreDiagramVersion()_ operations. Using the _exportEmbedding()_ operation, the _Developer_ can export their diagram for embedding.

The _Issue_ class has the attribute _isPullRequest_, and the operation _embedDiagram()_, so that the exported diagram can be embedded. An _Issue_ can have multiple instances of _Feedback_, with its _content_ attribute. _Feedback_ is linked to a _UML Diagram Version_, that has its own _title_, _description_ and _createdAt_ attributes. A _UML Diagram Version_ is part of a _Version History_, which belongs to a single _UML Diagram Editor_.

In conclusion, this analysis object model captures the relationships and processes that take place with version management and embedding features in the standalone Apollon editor, and in the Apollon IDE extension.

=== Dynamic Model
In this section we will use the activity diagram to describe the utilization of version management and embedding features in a Git setting for the standalone Apollon editor, and the application of the Apollon IDE extension for documentation maintenance. Activity diagrams describe behavior in terms control and data flows @bruegge2004object.

See @git-integration for an activity diagram of the utilization of version management and embedding features in a Git setting for the standalone Apollon editor.

#figure(
  image("/figures/dynamic-model/git-integration/git-integration.svg"),
  caption: [Activity diagram of the utilization of version management and embedding features in a Git setting for the standalone Apollon editor],
) <git-integration>

The diagram starts with the activity _User creates a diagram_, after which the _First draft of diagram_ is obtained. This allows the user to embed their diagram in a Git pull request. When the diagram is embedded, the user can engage in a feedback loop with their collaborators. According to the feedback, the user can update the diagram and publish a new version, which will result in a _Diagram embedding updated_ object. With the end of the feedback loop comes the end of this activity diagram.

See @docs-integration for an activity diagram of the application of the Apollon IDE extension for documentation maintenance.

#figure(
  image("/figures/dynamic-model/docs-integration/docs-integration.svg"),
  caption: [Activity diagram of the application of the Apollon IDE extension for documentation maintenance],
) <docs-integration>

The first activity is _Open Diagram in IDE_, after which the user has a _Diagram preview opened in IDE_. Then, the user decides if they want to modify the diagram. If not, the user generates SVG of the diagram with the extension. Otherwise, the user first makes changes to the diagram in the editor in order to acquire the _New diagram_. Finally, the user has an SVG of the diagram for embedding, allowing him to embed the diagram in documentation.

=== User Interface
In this section we will discuss the key UI components of the standalone Apollon editor that constitute version management and embedding feautures.

The component for version management in the standalone Apollon editor lies in the version management sidebar, displayed in @version-management-sidebar.

#figure(
  image("/figures/user-interface/version-management-sidebar.png", height: 60%),
  caption: [Version management sidebar in standalone Apollon editor (in dark mode)],
) <version-management-sidebar>

In the top right corner of the sidebar is a "+" button, used for creating new versions. Below is the list of versions, ordered chronologically. For example, this diagram has three versions. At the top is the unpublished version, which presents the latest state of the diagram. Then follow the published versions, each with a title, an optional description and time stamp of publishing. Under this version information are buttons for editing the version's information, deleting it and previewing it. In case a diagram version is being previewed, this will be indicated by a filled circle to the left of the version, and the buttons "Exit preview" and "Restore version" will appear.

In order to embed a diagram in a GitHub issue/pull request, the user clicks on the _Share_ navigation bar item, which triggers the Share modal, displayed in @share-modal-embed. In order to embed the diagram, the user clicks on the _Embed_ option, after which the embedding link is copied to their clipboard. In case the _Embed_ option was previously selected, a textarea with the embedding link is displayed in the Share modal, as shown in @share-modal-embed.

#figure(
  image("/figures/user-interface/share-modal-embed.png"),
  caption: [Share modal in standalone Apollon editor (in dark mode)],
) <share-modal-embed>

The user interface components responsible for version management and embedding features in the standalone Apollon editor were designed with the goal in mind to provide the most intuitive and seamless user experience as possible.
