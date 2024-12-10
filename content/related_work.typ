#import "/utils/todo.typ": TODO

= Related Work
A variety of tools is available in the domain of UML modeling. Some are modeling editors such as Apollon, but there are also markup languages for drafting diagrams such as PlantUML #footnote[https://plantuml.com/]. This chapter compares such tools with Apollon and elaborates why it is nevertheless worth improving Apollon. Before diving into specific differences, it is worth noting that none of these tools support a Git integration of embedding diagrams with live updates that this thesis aims to implement.

\

#par(first-line-indent: 0em)[*Mermaid*]
#par(first-line-indent: 0em)[
  Mermaid is a JavaScript based diagramming and charting tool that uses Markdown-inspired text definitions and a renderer to create and modify complex diagrams #footnote[https://mermaid.js.org/]. GitHub supports the integration of Mermaid in markdown files, so that Mermaid diagrams can be embedded in GitHub issues and pull requests #footnote[https://github.blog/developer-skills/github/include-diagrams-markdown-files-mermaid/]. However, Mermaid does not provide a visual modeling editor like Apollon, which limits the user.
]

\

#par(first-line-indent: 0em)[*PlantUML*]
#par(first-line-indent: 0em)[
  GitLab supports the integration of PlantUML #footnote[https://docs.gitlab.com/ee/administration/integration/plantuml.html]. Just like Mermaid, PlantUML does not provide a visual modeling editor. Furthermore, the GitLab integration requires the user to configure their own PlantUML server, which introduces additional friction.
]

\

#par(first-line-indent: 0em)[*draw.io*]
#par(first-line-indent: 0em)[
  draw.io is a JavaScript, client-side editor for general diagramming #footnote[https://github.com/jgraph/drawio]. It is free and can be used in the browser just like Apollon. On the contrary, it does not support certain UML diagram types that are supported by Apollon, such as the Deployment, Component and Use Case diagrams. draw.io also does not offer a collaboration feature such as Apollon.
]

\

#par(first-line-indent: 0em)[*StarUML*]
#par(first-line-indent: 0em)[
  StarUML is another diagram modeling editor #footnote[https://docs.staruml.io/]. Like Apollon, it is specfiically tailored for UML diagrams, but supports a greater variety of diagrams and provides more features. The disadvantages of StarUML are that it is not free to use and can not be used in the browser.
]
