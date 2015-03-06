#!/bin/bash


# Get rid of old versions in user folder
rm -rf ~/Library/Graphics/Quartz\ Composer\ Plug-Ins/Keyboard\ 2.plugin
rm -rf ~/Library/Graphics/Quartz\ Composer\ Plug-Ins/RetrieveGlobalValue.plugin
rm -rf ~/Library/Graphics/Quartz\ Composer\ Plug-Ins/SaveGlobalVariable.plugin
rm -rf ~/Library/Graphics/Quartz\ Composer\ Plug-Ins/Retrieve\ Global\ String.plugin
rm -rf ~/Library/Graphics/Quartz\ Composer\ Plug-Ins/Save\ Global\ String.plugin
rm -rf ~/Library/Graphics/Quartz\ Composer\ Patches/Avocado
rm -rf ~/Library/Graphics/Quartz\ Composer\ Patches/Origami
rm -rf ~/Library/Graphics/Quartz\ Composer\ Patches/Origami.plugin

# Get rid of old versions in system folder
rm -rf /Library/Graphics/Quartz\ Composer\ Plug-Ins/Keyboard\ 2.plugin
rm -rf /Library/Graphics/Quartz\ Composer\ Plug-Ins/RetrieveGlobalValue.plugin
rm -rf /Library/Graphics/Quartz\ Composer\ Plug-Ins/SaveGlobalVariable.plugin
rm -rf /Library/Graphics/Quartz\ Composer\ Plug-Ins/Retrieve\ Global\ String.plugin
rm -rf /Library/Graphics/Quartz\ Composer\ Plug-Ins/Save\ Global\ String.plugin
rm -rf /Library/Graphics/Quartz\ Composer\ Patches/Avocado
rm -rf /Library/Graphics/Quartz\ Composer\ Patches/Origami
rm -rf /Library/Graphics/Quartz\ Composer\ Patches/Origami.plugin

# Get rid of temporary files
rm -rf /Users/Shared/Origami
rm -rf /Users/Shared/Origami.plugin
rm -rf /Users/Shared/Avocado
rm -rf /Users/Shared/Avocado\ Plug-Ins/

# Set permissions correctly
chown $USER:`id -g $USER` ~/Library/Graphics
chown $USER:`id -g $USER` ~/Library/Graphics/*
chown -R $USER:`id -g $USER` ~/Library/Graphics/Quartz\ Composer\ Patches
chown $USER:`id -g $USER` ~/Library/Graphics/Quartz\ Composer\ Patches
chown $USER:`id -g $USER` ~/Library/Graphics/Quartz\ Composer\ Patches/*
chown -R $USER:`id -g $USER` ~/Library/Graphics/Quartz\ Composer\ Plug-Ins
chown $USER:`id -g $USER` ~/Library/Graphics/Quartz\ Composer\ Plug-Ins
chown $USER:`id -g $USER` ~/Library/Graphics/Quartz\ Composer\ Plug-Ins/*

