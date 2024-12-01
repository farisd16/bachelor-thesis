#import "/utils/todo.typ": TODO

#let pseudoheading(body) = {
  set par(first-line-indent: 0em)
}

= Requirements Analysis
This chapter presents a detailed Requirements Analysis for the development of the proposed embedding and version management features of the standalone Apollon editor and the Apollon VSCode extension. The analysis is systematically organized based on the “Requirements Analysis Document Template” by Bruegge and Dutoit, ensuring a comprehensive and methodical approach @bruegge2004object. We start with an overview of the purpose and objectives of the proposed features and extension, marking the first step for establishing requirements. Then, we categorize the requirements into functional and nonfunctional requirements, according to the FURPS+ model. FURPS stands for Functionality, Usability Reliability, Performance and Supportability, and was presented by Grady and Caswell @grady1987furps. The "+" indicates additional subcategories that were introduced later on @grady1992furps. The chapter concludes with system modeling.

== Overview
The purpose of our proposed embedding feature for the standalone Apollon editor is to provide users with a seamless Git integration, in order to motivate the usage of UML diagrams in issues and pull requests. This results in a collaborative setting, where diagrams may need to be iteratively updated, which is facilitated by version management. The Apollon VSCode extension enables an IDE integration of Apollon, to assist developers with creating and maintaining UML diagrams for documentation purposes.

The overarching objective is to take steps forward in the direction of making Apollon a viable tool for students and the industry as a solution for their UML modeling needs. A successful outcome for this project is positive feedback for new features and an increase in usage of Apollon.

== Requirements

This section delves into the functional and nonfunctional requirements of the proposed work, in order to lay foundations for the design and implementation of the project. 

=== Functional Requirements
This subsection defines the functional requirements (FRs) of our work. Functional requirements describe the interactions between the system and its environment independent of its implementation @bruegge2004object. We can use them to ensure that the designed system posseses the intended functionality.

\

#par(first-line-indent: 0em)[*Standalone Apollon Editor*:]
- FR1.1 *Create Version*: The user can create a new version of their diagram.
- FR1.2 *Delete Version*: The user can delete existing versions of their diagram.
- FR1.3 *Edit Version*: The user can edit the description and title of existing versions of their diagram.
- FR1.4 *Preview Version*: The user can preview existing versions of their diagram.
- FR1.5 *Restore Version*: The user can restore an existing version of their diagram while previewing it.
- FR1.6 *See Versions*: The user can see a list of existing versions of their diagram, each version having a title and description.
- FR1.7 *Embed Diagram*: The user can embed their diagram in a Git issue/pull request. The embedding always displays the newest version of the diagram.
- FR1.8 *Collaborate on Diagram*: After the diagram is embedded in a Git issue/pull request, authorized collaborators can open the embedded diagram in the standalone Apollon editor and make changes.

\

#par(first-line-indent: 0em)[*Apollon VSCode Extension*:]
- FR2.1 *Create Diagram*: The user can create a new diagram. The extension generates a file with the _.apollon_ extension in which the diagram is stored.
- FR2.2 *Model Diagram*: The user can open diagrams from _.apollon_ files in the Apollon modeling editor and make changes.
- FR2.3 *Save Diagram*: The user can save the state of the diagram from the Apollon modeling editor to the belonging _.apollon_ file.
- FR2.4 *Export Diagram*: The user can export the state of the diagram from the Apollon modeling editor for embedding purposes.
- FR2.5 *Draft Diagram*: The user can create diagrams using a textual syntax. The extension is able to convert such syntax to a _.apollon_ file.

=== Nonfunctional Requirements
This subsection defines the nonfunctional requirements (NFRs) of our work. Nonfunctional requirements describe aspects of the system that are not directly related to the functional behavior of the system. They include a broad variety of requirements that apply to many different aspects of the system, from usability to performance @bruegge2004object.

\

- NFR1 *Usability*: The user should be able to create a new version with no more than two clicks in the standalone Apollon editor.

- NFR2 *Usability*: The user should be able to acquire the embedding link with no more than two clicks in the standalone Apollon editor.

- NFR3 *Reliability*: The embedding in an issue/pull request should always display the newest version of the diagram.

- NFR4 *Portability*: The Apollon VSCode extension should also be available for VSCodium #footnote[https://vscodium.com/]. 

== System Models
This section showcases models that visualize our system's functionality, structure, behavior and user interaction. We will examine detailed scenarios, the use case model, the Analysis Object Model, a dynamic model and UI mockups.

=== Scenarios
The following subsection displays a set of scenarios which depict practical interactions of a user with our new features and IDE extension.

\

#par(first-line-indent: 0em)[*Scenario 1: Embedding a Diagram in a Pull Request*]
Felix, a developer that works on Artemis, has implemented a new feature and would like to create a pull request. In order to visualize the changes to the system his new feature has made, he intends on creating a UML diagram and embedding it in his pull request.

Felix opens the standalone Apollon editor in his browser and starts designing his diagram. Once he is done, Felix clicks on the _Share_ item in the navigation bar of the editor, and selects the _Embed_ option. The editor has copied the embedding link to his clipboard. He then proceeds to open the pull request, and pastes the embedding. Now, the latest version of Felix's diagram is visible in the pull request.

Max, another developer, requests changes on the pull request. Due to these changes, the UML diagram has to be adjusted. Felix opens his standalone Apollon editor, makes the needed changes to the diagram and publishes a new version. The diagram in the pull request is automatically updated to the newly published version. Max takes a look at the pull request again, and approves it after seeing that the code has been adjusted as he requested, and that the system looks as desired according to the embedded diagram.

\

#par(first-line-indent: 0em)[*Scenario 2: Embedding a Diagram in Documentation*]
Bob, a developer who is working with his team on building software, has made changes and therefore needs to update the documentation. In order to visualize the system properly, he wants do embed a UML diagram in the documentation.

Bob downloads the Apollon extension for VSCode, and then clicks on Apollon's icon in the activity bar. After the sidebar of the extension pops up, he types in the name of the diagram in the input field for the _New diagram name_, selects the type of the new diagram from a dropdown, and clicks on the _Create new diagram_ button. The extension creates a _.apollon_ file for his diagram, and opens the Apollon editor. Once Bob is done modeling his diagram, he clicks on the _Save_ button in the editor to save his changes in the _.apollon_ file, and finally clicks the _Export_ button, to export his diagram as an SVG file, which he embeds in the documentation.

The diagram is now being versioned as part of the Git repository. After some time, Bob makes further changes, such that the diagram in the documentation needs to be updated again. He again opens Apollon's sidebar by clicking on the activity bar icon, finds the diagram in the dropdown of existing diagrams, and clicks on the _Load diagram_ button. The extension opens the diagram in the Apollon editor. Bob models the diagram accordingly, clicks on the _Save_ and _Export_ buttons. He embeds the SVG file in the documentation.

\

#par(first-line-indent: 0em)[*Scenario 3: Drafting a Diagram (Visionary)*]
Eve, a developer, is in a rush, and would like to create a UML diagram as soon as possible as part of her changes to documentation. She has already downloaded the Apollon VSCode extension, so she creates a file _diagram.apollon.draft_, and using Apollon's textual syntax, creates a UML diagram with text. She opens this diagram in the modeling editor by clicking the _Load diagram_ button in the extension sidebar, sees that she likes it, and exports it as an SVG in order to use it for her documentation. Finally Eve creates a pull request with her changes.

Adam, another developer working with Eve, decides to review the pull request. He is also familiar with Apollon's syntax, and just by looking at Eve's _diagram.apollon.draft_, he can understand how the diagram looks. Adam approves the pull request.

=== Use Case Model
Use case modeling helps capture the functional requirements of a system. Use cases focus on the behavior of the system from an external point of view. A use case describes a function provided by the system that yields a visible result for an actor @bruegge2004object.

The intended users of the standalone Apollon editor and the Apollon VSCode extension are students and developers from the industry. Both types of users use our proposed work in the same way, so we will call them *Developer*. @use-case-model shows the use case diagram of proposed features in the standalone Apollon editor and the Apollon VSCode extension.



#figure(
  image("/figures/use-case-model/use-case-model.svg"),
  caption: [Use case diagram of proposed features in the standalone Apollon editor and the Apollon VSCode extension],
) <use-case-model>

=== Analysis Object Model
#TODO[
  This subsection should contain a UML Class Diagram showing the most important objects, attributes, methods and relations of your application domain including taxonomies using specification inheritance (see @bruegge2004object). Do not insert objects, attributes or methods of the solution domain. *Important:* Make sure to describe the analysis object model thoroughly in the text so that readers are able to understand the diagram. Also write about the rationale how and why you modeled the concepts like this.

]

=== Dynamic Model
#TODO[
  This subsection should contain dynamic UML diagrams. These can be a UML state diagrams, UML communication diagrams or UML activity diagrams.*Important:* Make sure to describe the diagram and its rationale in the text. *Do not use UML sequence diagrams.*
]

=== User Interface
#TODO[
  Show mockups of the user interface of the software you develop and their connections / transitions. You can also create a storyboard. *Important:* Describe the mockups and their rationale in the text.
]