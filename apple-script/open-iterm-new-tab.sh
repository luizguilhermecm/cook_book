on alfred_script(q)
    tell application "iTerm"
    activate
    try
        set currentWindow to the last window
    on error
        set currentWindow to (create window with default profile)
    end try
    tell current window
    -- These commands return a tab
        set newTab to (create tab with default profile)
        tell newTab
            select
                tell current session of currentWindow
                    write q
                end tell
            end tell
        end tell
    end tell
end alfred_script
