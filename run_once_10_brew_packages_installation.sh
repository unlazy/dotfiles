#!/bin/bash

formulae=(
    autojump
    bat
    fzf
    jq
    yq
    zplug
    pure
    micro
    k9s
    k3d
    helm
    kubectl
    mkcert
    nss
    wget
)
casks=(
    firefox
    iterm2
    visual-studio-code
    raycast
    syntax-highlight
    qlmarkdown
    qlstephen
    alt-tab
    shottr
    topnotch
    meetingbar
    zoom
    mattermost
    docker
    postman
)

brew update

brew install ${formulae[@]}
brew install --cask ${casks[@]}

brew cleanup
