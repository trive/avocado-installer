#!/bin/bash
#
# Avocado installation script
# by Marco Triverio (gtrive@gmail.com, m@ideo.com)
#


### Variables

# Where to install
INSTALL_PATH=~/Library/Graphics/Quartz\ Composer\ Patches
INSTALL_PATH_PLUGINS=~/Library/Graphics/Quartz\ Composer\ Plug-Ins
# Where installation files are located
INSTALLATION_FILES_PATH=/Users/Shared
# Paths to check for unwanted additional installations
ADDITIONAL_INSTALL_PATH=(/Library
						 /Users/Shared/Library)
ORIGAMI_FOLDER=Graphics/Quartz\ Composer\ Patches
ORIGAMI_PLIST="$INSTALL_PATH"/Origami.plugin/Contents/Info.plist
# Do not install Origami if this version is detected
MINIMUM_ORIGAMI_VERSION=2
SHOULD_INSTALL_ORIGAMI=false
LOG_FILE=~/.avocado_install_log.txt


### Redirect output to file
# Close STDOUT file descriptor
exec 1<&-
# Close STDERR FD
exec 2<&-
# Open STDOUT as $LOG_FILE file for read and write.
exec 1<>$LOG_FILE
# Redirect STDERR to STDOUT
exec 2>&1
# Delete everything in the file
> "$LOG_FILE"

echo ""
echo "****************************"
echo " Avocado - installation log "	
echo `date`
echo "****************************"


### Initial clean up

# Sets the correct permissions
echo "Starting..."
chown -R $USER:`id -g $USER` ~/Library/Graphics
chown -R $USER:`id -g $USER` /Library/Graphics



### Check if Origami is installed and/or outdated
echo "Detecting Origami..."
if [ -f "$ORIGAMI_PLIST" ]; then
	echo "Origami is installed!"
	echo "Checking version..."

	ORIGAMI_VERSION=($(grep -C 1 CFBundleShortVersionString "$ORIGAMI_PLIST" | grep -o '[0-9]\{1,\}'))
	ORIGAMI_VERSION_STRING=($(grep -C 1 CFBundleShortVersionString "$ORIGAMI_PLIST" | grep -o '[0-9]\.*[0-9]*\.*[0-9]*'))

	echo "Detected version ""$ORIGAMI_VERSION_STRING"

	if [ ${ORIGAMI_VERSION[0]} -lt "$MINIMUM_ORIGAMI_VERSION" ]
		then
		echo "Origami is outdated"
		SHOULD_INSTALL_ORIGAMI=true
	fi
else
	echo "Origami is not installed"
	SHOULD_INSTALL_ORIGAMI=true
fi


### Installation

# Makes sure directories exists
mkdir -p "$INSTALL_PATH"
mkdir -p "$INSTALL_PATH_PLUGINS"

# Install (or not) Origami
if [ "$SHOULD_INSTALL_ORIGAMI" = true ]; then
	echo "Installing Origami..."
	sudo rm -rf "$INSTALL_PATH"/Origami
	sudo rm -rf "$INSTALL_PATH"/Origami.plugin
	sudo cp -aRf "$INSTALLATION_FILES_PATH"/Origami		   "$INSTALL_PATH"
	sudo cp -aRf "$INSTALLATION_FILES_PATH"/Origami.plugin "$INSTALL_PATH"
else
	echo "Not going to install Origami"
fi

echo "Installing Avocado..."

# Remove Avocado old installations
sudo rm -rf ~/Library/Graphics/Quartz\ Composer\ Plug-Ins/Keyboard\ 2.plugin
sudo rm -rf ~/Library/Graphics/Quartz\ Composer\ Plug-Ins/RetrieveGlobalValue.plugin
sudo rm -rf ~/Library/Graphics/Quartz\ Composer\ Plug-Ins/SaveGlobalVariable.plugin
sudo rm -rf ~/Library/Graphics/Quartz\ Composer\ Plug-Ins/Retrieve\ Global\ String.plugin
sudo rm -rf ~/Library/Graphics/Quartz\ Composer\ Plug-Ins/Save\ Global\ String.plugin
sudo rm -rf ~/Library/Graphics/Quartz\ Composer\ Patches/Avocado
sudo rm -rf /Library/Graphics/Quartz\ Composer\ Plug-Ins/Keyboard\ 2.plugin
sudo rm -rf /Library/Graphics/Quartz\ Composer\ Plug-Ins/RetrieveGlobalValue.plugin
sudo rm -rf /Library/Graphics/Quartz\ Composer\ Plug-Ins/SaveGlobalVariable.plugin
sudo rm -rf /Library/Graphics/Quartz\ Composer\ Plug-Ins/Retrieve\ Global\ String.plugin
sudo rm -rf /Library/Graphics/Quartz\ Composer\ Plug-Ins/Save\ Global\ String.plugin
sudo rm -rf /Library/Graphics/Quartz\ Composer\ Patches/Avocado

# Install Avocado
sudo cp -aRf "$INSTALLATION_FILES_PATH"/Avocado 				"$INSTALL_PATH"
sudo cp -aRf "$INSTALLATION_FILES_PATH"/Avocado\ Plug-Ins/* 	"$INSTALL_PATH_PLUGINS"


### Clean up

echo "Cleaning up..."

# Gets rid of additional installations that might cause trouble
sudo rm -rf /Library/Graphics/Quartz\ Composer\ Patches/Avocado
sudo rm -rf /Library/Graphics/Quartz\ Composer\ Patches/Origami
sudo rm -rf /Library/Graphics/Quartz\ Composer\ Patches/Origami.plugin

# Sets the correct permissions on newly installed files
chown -R $USER:`id -g $USER` ~/Library/Graphics
chown -R $USER:`id -g $USER` /Library/Graphics
chown $USER:`id -g $USER` "$LOG_FILE"

# Remove temporary files
rm -rf /Users/Shared/Origami
rm -rf /Users/Shared/Origami.plugin
rm -rf /Users/Shared/Avocado
rm -rf /Users/Shared/Avocado\ Plug-Ins/

# Open Avocado examples in browser
open https://github.com/ideo/avocado/tree/master/Examples
open http://ideo.is/avocado_labs


echo "Done"
echo "****************************"
echo ""


