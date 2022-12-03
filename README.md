# Odin Flickr API

Built as part of [The Odin Project's Full Stack Ruby on Rails](https://www.theodinproject.com/paths/full-stack-ruby-on-rails?) curriculum: [Project: Flickr API](https://www.theodinproject.com/lessons/ruby-on-rails-flickr-api) lesson.

The app show public photos from Flickr based on the user id entered. If the user input is invalid or the user has no public photos, an error message is shown.

## Techniques Implemented
* API call and handling of response through [`flickr`](https://github.com/cyclotron3k/flickr) gem 
* [`figaro`](https://github.com/laserlemon/figaro) gem to save key and secret as environment variables
* `begin`/`rescue` for error handling
* Used Postman to read API response