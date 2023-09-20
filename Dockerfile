FROM squidfunk/mkdocs-material:latest

# A list of awesome MkDocs projects and plugins : https://github.com/mkdocs/catalog
RUN pip install mkdocs-mermaid2-plugin
RUN pip install mkdocs-glightbox
RUN pip install mkdocs-open-in-new-tab