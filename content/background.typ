#import "/utils/todo.typ": TODO

= Background

== GitHub Issues and Pull Requests
GitHub users can create issues in their repositories to plan, dicuss and track work. Issues can track bug reports, new features and ideas, and anything else a user needs to write down or discuss with their team #footnote[https://docs.github.com/en/issues/tracking-your-work-with-issues/about-issues].

A pull request is a proposal to merge a set of changes from one branch into another. In a pull request, collaborators can review and discuss the proposed set of changes before they integrate the changes into the main codebase. Pull requests display the differences, or diffs, between the content in the source branch and the content in the target branch #footnote[https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/about-pull-requests].

Issues and pull requests are concepts that are present in other prominent Git hosting services too, under the same or similar names. For example, GitLab provides issues and merge requests #footnote[https://docs.gitlab.com/ee/user/project/issues/] #footnote[https://docs.gitlab.com/ee/user/project/merge_requests/creating_merge_requests.html].

The embedding feature, which this thesis proposes, aims to enhance the user's capability of embedding their diagrams in GitHub issues and pull requests by simply pasting text.

== VSCode Extensions
VSCode is a popular and versatile IDE that offers support for a variety of programming languages. A key feature of VSCode are extensions, which change the look of the IDE, add custom components and views, create webviews to display a custom webpage and support a new programming language #footnote[https://code.visualstudio.com/api]. These extensions can be made by anyone, and made public through the VSCode Extension Marketplace.

In order to provide an IDE integration of Apollon, we are going to create an Apollon VSCode extension.
