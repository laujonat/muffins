tell application "iTerm2"
 write text "ruby muffins.rb"
 split vertically with profile "default"
 tell current window
   create tab with profile "default"
  end tell

  tell first session of current tab of current window
  set name to "SERVER"
  write text "ls"
  split horizontally with profile "default"
  write text "yarn start"
  split vertically with profile "default"
  write text "rails"
  split horizontally with profile "default"
end tell

end tell