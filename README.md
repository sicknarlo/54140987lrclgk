##Week 5 Assessment

Fork and clone this repo! Create a pull request when you're done.

###1. Survey says

Answer [these qustions via Google Forms](https://docs.google.com/forms/d/1XVf9Z9LMsKKtb--iackS1w9Ilpw8Er60j5246Kgg0XE/viewform).

###2. Playlister, the App

####Setup
Go to the `playlister` directory and set this app up:

```
$ bundle install
$ rake db:create
$ rake db:migrate
$ rake db:seed
```

Check out `db/schema.rb`. You'll see that there are users, songs, playlists and a `playlist_selections` join table. Our seeds file has given you some users and songs.

####Your Mission