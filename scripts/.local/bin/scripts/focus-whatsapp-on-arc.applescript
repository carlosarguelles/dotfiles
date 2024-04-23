#!/usr/bin/osascript

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Focus WhatsApp
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 💬

# Documentation:
# @raycast.description Focus WhatsApp on Arc Browser

tell application "Arc"
  tell front window
    tell space "For Me?"
      tell tab 1 to select
    end tell
  end tell
  activate
end tell
