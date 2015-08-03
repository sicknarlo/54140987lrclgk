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
You need to build out some of the Playlist model.

Every playlist needs a unique name and an owner. Destroying a user should destroy their playlists. Destroying a playlist should remove the song associations.

Create a NEW/EDIT form for a playlist. The user should be able to select an owner (User) from a drop down, and to select one or many songs via checkboxes.

####A few notes

- Don't worry about styling!
- There is a very rudimentary index page that you can redirect to after a new playlist page.
