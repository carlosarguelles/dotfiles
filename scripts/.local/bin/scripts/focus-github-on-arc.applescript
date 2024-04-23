#!/usr/bin/osascript

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Focus GitHub
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 🐙

# Documentation:
# @raycast.description Focus GitHub on Arc Browser

tell application "Arc"
  tell front window
    tell space "For Work?"
      tell tab 2 to select
    end tell
  end tell
  activate
end tell
