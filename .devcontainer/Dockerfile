# See here for image contents: https://github.com/microsoft/vscode-dev-containers/tree/v0.236.0/containers/javascript-node/.devcontainer/base.Dockerfile

# [Choice] Node.js version (use -bullseye variants on local arm64/Apple Silicon): 18, 16, 14, 18-bullseye, 16-bullseye, 14-bullseye, 18-buster, 16-buster, 14-buster
ARG VARIANT="18-bullseye"
FROM mcr.microsoft.com/vscode/devcontainers/javascript-node:0-${VARIANT}

ENV HOME /home/teka
WORKDIR $HOME

COPY settings.json /$HOME/.vscode/settings.json 

RUN ["apt-get", "update"]
RUN ["apt-get", "install", "-y", "neovim"]
RUN ["apt-get", "install", "-y", "vim"]
RUN ["apt-get", "install", "-y", "vifm"]
RUN echo "exec zsh" >> ~/.bashrc


#COPY .vimrc /root/.vimrc
COPY .zshrc /$HOME/.zshrc
COPY .vimrc /$HOME/.config/nvim/init.vim
COPY .vimrc /$HOME/.vimrc
COPY plug.vim /$HOME/.vim/autoload/plug.vim
COPY vifmrc /$HOME/.vifm/vifmrc

# VSCode setting.json
#COPY settings.json /root/.config/Code/User/settings.json
#COPY settings.json /$HOME/.vscode/settings.json 

# [Optional] Uncomment this section to install additional OS packages.
# RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
#     && apt-get -y install --no-install-recommends <your-package-list-here>

# [Optional] Uncomment if you want to install an additional version of node using nvm
# ARG EXTRA_NODE_VERSION=10
# RUN su node -c "source /usr/local/share/nvm/nvm.sh && nvm install ${EXTRA_NODE_VERSION}"

# [Optional] Uncomment if you want to install more global node modules
# RUN su node -c "npm install -g <your-package-list-here>"
