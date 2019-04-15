tell application "iTerm2"
 
 tell current window
   create tab with profile "default"
 end tell

 tell first session of current tab of current window
  set name to "SERVER"
  write text "ls"
  split horizontally with profile "default"
  split vertically with profile "default"
end tell

end tell