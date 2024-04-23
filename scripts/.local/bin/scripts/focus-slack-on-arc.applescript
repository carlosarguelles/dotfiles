#!/usr/bin/osascript

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Focus Slack
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 💬

# Documentation:
# @raycast.description Focus Slack on Arc Browser

tell application "Arc"
  tell front window
    tell space "For Work?"
      tell tab 1 to select
    end tell
  end tell
  activate
end tell
