tell application "Dictionary"
    activate
end tell

tell application (path to frontmost application as text) to quit

set the clipboard to (path to frontmost application as text)

set the clipboard to (path to current application as text)
