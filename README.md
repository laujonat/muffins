# Muffins 🍦
Do yourself a favor and avoid carpal tunnel with this Ruby on Rails REPL. 

> Requirements postgres10.6^ installed in `/user/local/var/postgres`
  > Local Git configuration set up
  > No have ngrok set up (optional)
  > An alias exists to desired project directory `cd ../_DEV/rails_project` 
  > TBD: MVP will only support Heroku -> Install `heroku cli` 

## Setup
```bash
# Just execute the muffins.rb script.
# Optionally you can alias script in ~/.bash_profile
$ ruby muffins.rb

$ chmod u+x setup_muffins.sh
$ setup_muffins.sh # [wip]
```

![cli scrnshot](https://i.imgur.com/lx8lgqo.jpg)

## How to use 
```bash
# TODO: use .env to allow user to configurate SDLC environemnt 
# Set personal values in .env
$ ruby muffins.rb 
```

## Features
> Quick terminal pane setup for a Rails development environment
> Easy Heroku environment pane setup
