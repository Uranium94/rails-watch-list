# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'
require 'json'

url_serialized = URI.open('https://api.themoviedb.org/3/movie/top_rated?api_key=0c17906ba044178ba7973c63336656ad').read
JSON.parse(url_serialized)['results']
