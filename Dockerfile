FROM squidfunk/mkdocs-material:latest

# A list of awesome MkDocs projects and plugins : https://github.com/mkdocs/catalog
# https://github.com/lukasgeiter/mkdocs-awesome-pages-plugin
# https://github.com/zachhannum/mkdocs-autolinks-plugin
# https://github.com/fralau/mkdocs-mermaid2-plugin
# https://github.com/JakubAndrysek/mkdocs-glightbox
# https://github.com/JakubAndrysek/mkdocs-open-in-new-tab
# https://github.com/byrnereese/mkdocs-minify-plugin
RUN pip install --upgrade pip \
    && pip install mkdocs-awesome-pages-plugin \
    # && pip install mkdocs-autolinks-plugin \
    && pip install mkdocs-mermaid2-plugin \
    && pip install mkdocs-glightbox \
    && pip install mkdocs-open-in-new-tab \
    && pip install mkdocs-minify-plugin