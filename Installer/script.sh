#!/bin/bash

mkdir -p ~/Library/Graphics/Quartz\ Composer\ Patches/
mkdir -p ~/Library/Graphics/Quartz\ Composer\ Plug-Ins/

# Get rid of old versions in user folder
sudo rm -rf ~/Library/Graphics/Quartz\ Composer\ Plug-Ins/Keyboard\ 2.plugin
sudo rm -rf ~/Library/Graphics/Quartz\ Composer\ Plug-Ins/RetrieveGlobalValue.plugin
sudo rm -rf ~/Library/Graphics/Quartz\ Composer\ Plug-Ins/SaveGlobalVariable.plugin
sudo rm -rf ~/Library/Graphics/Quartz\ Composer\ Plug-Ins/Retrieve\ Global\ String.plugin
sudo rm -rf ~/Library/Graphics/Quartz\ Composer\ Plug-Ins/Save\ Global\ String.plugin
sudo rm -rf ~/Library/Graphics/Quartz\ Composer\ Patches/Avocado
sudo rm -rf ~/Library/Graphics/Quartz\ Composer\ Patches/Origami
sudo rm -rf ~/Library/Graphics/Quartz\ Composer\ Patches/Origami.plugin

# Get rid of old versions in system folder
sudo rm -rf /Library/Graphics/Quartz\ Composer\ Plug-Ins/Keyboard\ 2.plugin
sudo rm -rf /Library/Graphics/Quartz\ Composer\ Plug-Ins/RetrieveGlobalValue.plugin
sudo rm -rf /Library/Graphics/Quartz\ Composer\ Plug-Ins/SaveGlobalVariable.plugin
sudo rm -rf /Library/Graphics/Quartz\ Composer\ Plug-Ins/Retrieve\ Global\ String.plugin
sudo rm -rf /Library/Graphics/Quartz\ Composer\ Plug-Ins/Save\ Global\ String.plugin
sudo rm -rf /Library/Graphics/Quartz\ Composer\ Patches/Avocado
sudo rm -rf /Library/Graphics/Quartz\ Composer\ Patches/Origami
sudo rm -rf /Library/Graphics/Quartz\ Composer\ Patches/Origami.plugin

# Copy new version
cp -rpf /Users/Shared/Origami ~/Library/Graphics/Quartz\ Composer\ Patches/
cp -rpf /Users/Shared/Origami.plugin ~/Library/Graphics/Quartz\ Composer\ Patches/
cp -rpf /Users/Shared/Avocado ~/Library/Graphics/Quartz\ Composer\ Patches/
cp -rpf /Users/Shared/Avocado\ Plug-Ins/* ~/Library/Graphics/Quartz\ Composer\ Plug-Ins/

# Set permissions correctly
chown $USER:`id -g $USER` ~/Library/Graphics
chown $USER:`id -g $USER` ~/Library/Graphics/*
chown -R $USER:`id -g $USER` ~/Library/Graphics/Quartz\ Composer\ Patches
chown $USER:`id -g $USER` ~/Library/Graphics/Quartz\ Composer\ Patches
chown $USER:`id -g $USER` ~/Library/Graphics/Quartz\ Composer\ Patches/*
chown $USER:`id -g $USER` ~/Library/Graphics/Quartz\ Composer\ Patches/Origami
chown $USER:`id -g $USER` ~/Library/Graphics/Quartz\ Composer\ Patches/Origami/*
chown $USER:`id -g $USER` ~/Library/Graphics/Quartz\ Composer\ Patches/Origami.plugin
chown $USER:`id -g $USER` ~/Library/Graphics/Quartz\ Composer\ Patches/Avocado
chown $USER:`id -g $USER` ~/Library/Graphics/Quartz\ Composer\ Patches/Avocado/*
chown -R $USER:`id -g $USER` ~/Library/Graphics/Quartz\ Composer\ Plug-Ins
chown $USER:`id -g $USER` ~/Library/Graphics/Quartz\ Composer\ Plug-Ins
chown $USER:`id -g $USER` ~/Library/Graphics/Quartz\ Composer\ Plug-Ins/*
chown $USER:`id -g $USER` ~/Library/Graphics/Quartz\ Composer\ Plug-Ins/Retrieve\ Global\ String.plugin
chown $USER:`id -g $USER` ~/Library/Graphics/Quartz\ Composer\ Plug-Ins/Save\ Global\ String.plugin
chown $USER:`id -g $USER` ~/Library/Graphics/Quartz\ Composer\ Plug-Ins/Keyboard\ 2.plugin
chown -R $USER:`id -g $USER` ~/Library/Graphics/Quartz\ Composer\ Plug-Ins/Retrieve\ Global\ String.plugin/
chown -R $USER:`id -g $USER` ~/Library/Graphics/Quartz\ Composer\ Plug-Ins/Save\ Global\ String.plugin/
chown -R $USER:`id -g $USER` ~/Library/Graphics/Quartz\ Composer\ Plug-Ins/Keyboard\ 2.plugin/

rm -rf /Users/Shared/Origami
rm -rf /Users/Shared/Origami.plugin
rm -rf /Users/Shared/Avocado
rm -rf /Users/Shared/Avocado\ Plug-Ins/

# open avocado examples in browser
open https://github.com/ideo/avocado/tree/master/Examples
open http://ideo.is/avocado_labs
