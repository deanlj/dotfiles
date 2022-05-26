#!/usr/bin/env bash

set -e

echo 'start macos/setup-dock.sh'

# Ask for the administrator password upfront
sudo -v

__dock_item() {
    printf '%s%s%s%s%s' \
           '<dict><key>tile-data</key><dict><key>file-data</key><dict>' \
           '<key>_CFURLString</key><string>' \
           "$1" \
           '</string><key>_CFURLStringType</key><integer>0</integer>' \
           '</dict></dict></dict>'
}

printf '%s' 'Setting up Dock icons...'
defaults write com.apple.dock \
               persistent-apps -array "$(__dock_item '/Applications/Microsoft Outlook.app')" \
                                      "$(__dock_item /System/Applications/Calendar.app)" \
                                      "$(__dock_item /Applications/Bear.app)" \
                                      "$(__dock_item /Applications/Notes.app)" \
                                      "$(__dock_item /Applications/BBEdit.app)" \
                                      '$(__dock_item "/Applications/MAMP PRO.app")' \
                                      '$(__dock_item "/Applications/Brave Browser.app")' \
                                      "$(__dock_item /Applications/Trello.app)" \
                                      "$(__dock_item /Applications/Tinkerwell.app)" \
                                      "$(__dock_item /Applications/TablePlus.app)" \
                                      "$(__dock_item /Applications/Tower.app)" \
                                      "$(__dock_item /Applications/iTerm.app)" \
                                      "$(__dock_item /Applications/Slack.app)" \
                                      "$(__dock_item /Applications/Lastpass.app)"

###############################################################################
# Kill Dock                                                #
###############################################################################
killall Dock

echo "Done."
