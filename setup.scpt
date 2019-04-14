tell application "iTerm2"
 tell current window
   create tab with profile "default"
 end tell

 tell first session of current tab of current window
   set name to "muffins"
   write text "ls"
 end tell
end tell