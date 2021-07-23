FROM datainpoint/xeus-cling-notebook
USER root

# Requirements
RUN apt-get update && apt-get install -y curl \
&& curl -fsSL https://deb.nodesource.com/setup_16.x | bash - \
&& apt-get install -y nodejs

# Typescript Engine
RUN npm install -g itypescript \
&& its --install=global

# Javascript Engine
RUN npm install -g ijavascript \
&& ijsinstall --install=global

USER $NB_USER
