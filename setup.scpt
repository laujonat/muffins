tell application "iTerm2"
 split vertically with profile "default"
 tell current session of current window
  split vertically with profile "default"
 end tell

 tell current window
   create tab with profile "default"
  end tell

  tell first session of current tab of current window
    set name to "Rails Server"
    write text "ls"
    split horizontally with profile "default"
    write text "yarn start"
    split vertically with profile "default"
    write text "rails"
    split horizontally with profile "default"
  end tell

end tell