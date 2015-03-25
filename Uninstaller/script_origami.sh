#!/bin/bash

# Start
echo "Starting uninstaller..."
PROGRESS:1

# Set permissions correctly
PROGRESS:10
chown -vR $USER:`id -g $USER` ~/Library/Graphics
chown -vR $USER:`id -g $USER` /Library/Graphics

# Get rid of files in user folder
echo "Removing Origami from user's library..."
PROGRESS:20
rm -rf ~/Library/Graphics/Quartz\ Composer\ Patches/Origami
rm -rf ~/Library/Graphics/Quartz\ Composer\ Patches/Origami.plugin

# Get rid of files in system folder
echo "Removing Origami from system's library..."
PROGRESS:40
rm -rf /Library/Graphics/Quartz\ Composer\ Patches/Origami
rm -rf /Library/Graphics/Quartz\ Composer\ Patches/Origami.plugin

# Get rid of temporary files
echo "Performing additional cleanup..."
PROGRESS:60
rm -rf /Users/Shared/Origami
rm -rf /Users/Shared/Origami.plugin
rm -rf /Users/Shared/Avocado
rm -rf /Users/Shared/Avocado\ Plug-Ins/

# End
echo "Origami has been successfully uninstalled."
echo ""
echo "To reinstall Origami please visit: http://origami.facebook.com"
echo ""
echo "Done!"
PROGRESS:100
