#!/bin/bash

# Start
echo "Starting uninstaller..."
PROGRESS:1

# Get rid of files in user folder
echo "Removing Origami and Avocado from user's library..."
PROGRESS:10
rm -rf ~/Library/Graphics/Quartz\ Composer\ Plug-Ins/Keyboard\ 2.plugin
rm -rf ~/Library/Graphics/Quartz\ Composer\ Plug-Ins/RetrieveGlobalValue.plugin
rm -rf ~/Library/Graphics/Quartz\ Composer\ Plug-Ins/SaveGlobalVariable.plugin
rm -rf ~/Library/Graphics/Quartz\ Composer\ Plug-Ins/Retrieve\ Global\ String.plugin
rm -rf ~/Library/Graphics/Quartz\ Composer\ Plug-Ins/Save\ Global\ String.plugin
rm -rf ~/Library/Graphics/Quartz\ Composer\ Patches/Avocado
rm -rf ~/Library/Graphics/Quartz\ Composer\ Patches/Origami
rm -rf ~/Library/Graphics/Quartz\ Composer\ Patches/Origami.plugin

# Get rid of files in system folder
echo "Removing Origami and Avocado from system's library..."
PROGRESS:30
rm -rf /Library/Graphics/Quartz\ Composer\ Plug-Ins/Keyboard\ 2.plugin
rm -rf /Library/Graphics/Quartz\ Composer\ Plug-Ins/RetrieveGlobalValue.plugin
rm -rf /Library/Graphics/Quartz\ Composer\ Plug-Ins/SaveGlobalVariable.plugin
rm -rf /Library/Graphics/Quartz\ Composer\ Plug-Ins/Retrieve\ Global\ String.plugin
rm -rf /Library/Graphics/Quartz\ Composer\ Plug-Ins/Save\ Global\ String.plugin
rm -rf /Library/Graphics/Quartz\ Composer\ Patches/Avocado
rm -rf /Library/Graphics/Quartz\ Composer\ Patches/Origami
rm -rf /Library/Graphics/Quartz\ Composer\ Patches/Origami.plugin

# Get rid of temporary files
echo "Performing additional cleanup..."
PROGRESS:50
rm -rf /Users/Shared/Origami
rm -rf /Users/Shared/Origami.plugin
rm -rf /Users/Shared/Avocado
rm -rf /Users/Shared/Avocado\ Plug-Ins/

# Set permissions correctly
PROGRESS:70
chown $USER:`id -g $USER` ~/Library/Graphics
chown $USER:`id -g $USER` ~/Library/Graphics/*
chown -R $USER:`id -g $USER` ~/Library/Graphics/Quartz\ Composer\ Patches
chown $USER:`id -g $USER` ~/Library/Graphics/Quartz\ Composer\ Patches
chown $USER:`id -g $USER` ~/Library/Graphics/Quartz\ Composer\ Patches/*
chown -R $USER:`id -g $USER` ~/Library/Graphics/Quartz\ Composer\ Plug-Ins
chown $USER:`id -g $USER` ~/Library/Graphics/Quartz\ Composer\ Plug-Ins
chown $USER:`id -g $USER` ~/Library/Graphics/Quartz\ Composer\ Plug-Ins/*

# End
echo "Origami and Avocado have been successfully uninstalled."
echo ""
echo "To reinstall Origami please visit: http://origami.facebook.com"
echo "To reinstall both Avocado and Origami please visit: http://avocado.ideo.com"
PROGRESS:100
