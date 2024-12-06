#import "/utils/todo.typ": TODO

= System Design
In this chapter we delve into System design for our new standalone Apollon editor features and the Apollon VSCode extension guided by the “System Design Document Template” provided by Bruegge and Dutoit @bruegge2004object. We start with an overview, describing the used technology stack and giving a rough overview of the architecture. Then, we continue with design goals in order to highlight the key issues and criteria. We move on to subsystem decomposition, where we dive into the modular architecture of the Apollon VSCode extension. We end by investigating the persistent data management of the standalone Apollon editor in regards to version management.

== Overview
The standalone Apollon editor, a web application, is comprised of a server and client. It is designed to provide an intuitive and collaborative UML modeling editor.

The server side is implemented with Express.js #footnote[https://expressjs.com/], a JavaScript framework used for building Node.js #footnote[https://nodejs.org/] RESTful APIs. The server provides means to share diagrams, orchestrates collaboration and offers an endpoint which returns an SVG image of the latest version of a diagram, making diagram embedding in Git issues/pull requests possible.

The client side is powered by React #footnote[https://react.dev/], a JavaScript library used to design web and native user interfaces. The client serves the users an interactive interface for modeling UML diagrams of various types, sharing, exporting and importing diagrams.

The Apollon VSCode extension consists of the mandatory Extension Host written in TypeScript, along with two webviews designed as React applications. One webview provides a simple menu to create new diagrams and load existing ones in the extension sidebar. The other webview is a panel containing the Apollon UML modeling editor together with _Save_ and _Export_.

== Design Goals
Using non-functional requirements derived in @nonfunctional-requirements, this section derives design goals. Design goals identify the qualities that our system should focus on @bruegge2004object. We will also analyze a trade-off between design goals.

\

#par(first-line-indent: 0em)[*Portability*]
#par(first-line-indent: 0em)[
  VSCodium #footnote[https://vscodium.com/] is a popular alternative to VSCode, as it offers the same functionality without telemetry. In order to provide the extension to users of VSCodium, the extension must also be puslished to the Open VSX Registry #footnote[https://open-vsx.org/]. The pipeline for automatic deployment of new releases will therefore not only deploy to the VSCode Marketplace #footnote[https://marketplace.visualstudio.com/vscode], but also the Open VSX Registry.
]

\

#par(first-line-indent: 0em)[*Modifiability*]
#par(first-line-indent: 0em)[
  The Apollon VSCode extension simply imports and makes use of the Apollon library #footnote[https://www.npmjs.com/package/@ls1intum/apollon] in order to provide users with a UML modeling editor. As long as the API which the library provides remains the same, changes in Apollon should not cause breaking changes for the Apollon VSCode extension. This results in easy modifiability of the Apollon library.
]

\

#par(first-line-indent: 0em)[*Usability*]
#par(first-line-indent: 0em)[
  One of the key usability features of the standalone Apollon editor is that it does not require any authentication from the user. This results in very quick onboarding and reduces the amount of time a user needs in order to create their diagram. With the introduction of version management and embedding features, we have made sure that this remains unchanged in order to ensure usability.
]

\

#par(first-line-indent: 0em)[*Adaptability vs. Memory*]
#par(first-line-indent: 0em)[
  In order to support version management, we have had to adjust the format of stored diagrams. With memory usage in mind, the most optimal adaptation of the format involved removing and adding new atributes. However, considering that Apollon diagrams are also stored in the local storage of a user's browser, this would have resulted in a breaking change. For the purpose of avoiding such a breaking change, we have only added new optional attributes to the new format so that adaptability is guaranteed.
]

\

== Subsystem Decomposition
This section dives into the Subsystem Decomposition of the Apollon VSCode extesnsion displayed in @subsystem-decomposition. It illustrates the architecture of the system, displaying components and their connections.

#figure(
  image("/figures/subsystem-decomposition/subsystem-decomposition.svg"),
  caption: [Subsystem Decomposition of the Apollon VSCode extension],
) <subsystem-decomposition>

The main component of the extension is the _Extension Host_. In a way backend code, it defines the extension's core functionality such as the activity bar item and error/warning messages, and triggers a webview panel for the modeling editor using the VSCode API.

_Apollon Editor Webview_ and _Extension Menu Webview_ are two React applications with the purpose of populating webview content. The _Extension Menu Webview_ is designed to present the user with a menu to create new diagrams and load existing ones in the extension sidebar. The _Apollon Editor Webview_ serves content for the webview panel containing the Apollon UML modeling editor together with _Save_ and _Export_ buttons.

The _Extension Host_ is the entrypoint for all usecases, and therefore needs to communicate with webviews in order to trigger further events. This is done with the Webview Messaging API. After the webviews are active, they may receive user input. The webviews then send the needed information, such as a request to save the diagram, back to the _Extension Host_ through the Webview Messaging API.

== Persistent Data Management
This section describes how the standalone Apollon editor stores diagrams, including the version management information. The server uses Redis #footnote[https://redis.io/], an in-memory key-value database, in order to store diagrams. Green colored attributes represent additions for version management.

#figure(
  image("/figures/persistent-data-management/persistent-data-management.svg"),
  caption: [Diagram scheme of the standalone Apollon editor. Green colored attributes represent additions for version management.],
) <persistent-data-management>

In order to avoid breaking changes, only new optional attributes were introduced to the scheme. The _versions_ attribute is a recursive array, and stores versions in a chronological order, the first version being the oldest version. The _description_ attribute represents the description of a version. With the newly introduced optional attributes, not only are diagrams created before version management in the standalone Apollon editor still supported, but also all functional requirements of version management.
