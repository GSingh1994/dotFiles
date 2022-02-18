#!/bin/bash

#add flathub remote
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

#slack
flatpak install flathub com.slack.Slack

#stremio
flatpak install flathub com.stremio.Stremio

#screen-recorder
flatpak install flathub io.github.seadve.Kooha

#emoji-picker
flatpak install flathub it.mijorus.smile


#cleanup
flatpak uninstall --unused 
