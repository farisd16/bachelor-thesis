= Problem
Apollon is a feature-rich UML editor, as it supports a great variety of diagram types. However, it lacks efficient embedding capabilities, version management and a structured textual format of diagrams, which may prevent developers from utilizing it in their workflows. 

*Embedding capabilities*: 
For example, if a developer wants to embed an Apollon diagram into an issue or pull request, they need to use a PNG export of the diagram. Should the diagram be updated, this won't be reflected on the embedded image. Also, the developer can't open the diagram in Apollon through the embedding. Therefore, the developer would have to find the diagram, load it into Apollon, modify it, save it, and update the embedding. If the developer can't find the diagram, they will have to recreate it. This process is cumbersome with a lot of friction and can lead to outdated diagram embeddings, which is counter-productive.

*Version management*:
Currently, users can't track changes made to diagrams and feedback is not linked to a specific version, which makes it more difficult to collaborate and engage in a feedback loop. There is no way to revert to previous versions. If a developer wants to create another version of the diagram, the only way would be to import the diagram into a new file. 

*Diagram format*:
If a developer decides to use an Apollon diagram as part of documentation and to version it with Git, the current most convenient way would be to save the diagram in its JSON format. Nevertheless, a reviewer wouldn't be able to understand a lot about the diagram by looking at the JSON file, as it is not easily readable.

*Local IDE integration:*
Developers are unable to use Apollon within their IDEs such as VSCode or IntelliJ, limiting the efficiency of incorporating UML diagrams into their development processes and documentation. Instead, they have to leave their development environment to use Apollon from their web browser, which presents additional friction.