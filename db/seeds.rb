# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Article.create(title: "3v3 Pickup Gam", body: "I wanna run a pickup game at this park where i live", location: "Bryant Park", address: "775 New York Ave",  city: "brooklyn", state: "NY" , zipcode: 11203, sport: "basketball", players: 6, longitude: -73.9369354, latitude: 40.6624413).tags.create(name: "basketball")

Article.create(title: "small pickup game", body: "small pickup game", location: "Bay 8th", address: "Washington Ave", city:  "brooklyn", state: "NY", zipcode: 11205, sport: "football", players: 10, longitude: -73.9671183, latitude: 40.6945141).tags.create(name: "football")

Article.create(title: "big soccer game", body: "I have a few players I can run with and we want to play a full game. So collecting players", location: "Sethlow", address: "Central Park", city: "New York" , state: "NY", zipcode: 10128, sport: "soccer", players: 20, longitude: -73.9506774, latitude: 40.7826039).tags.create(name: "soccer")

Article.create(title: "Five vs Five all out Battle", body: "This is exactly what I've been waiting for. To crush souls of young children who dare join my games.", location: "Columbus Park", address: "86 St Belt Parkway", city: "Brooklyn" , state: "NY", zipcode: 11228, sport: "Baseball", players: 10, longitude: -74.0183365, latitude: 40.6034392).tags.create(name: "baseball")

Article.create(title: "Full Court Exhibition", body: "A full court exhibition Game, Cost is 10 dollars 15 players", location: "Central Park", address: "1987 west 10",  city: "brooklyn", state: "NY", zipcode: 11223, sport: "basketball", players: 15, longitude: -73.981489, latitude: 40.598656)

Article.create(title: "Baseball season just started, Lets play ball", body: "I have a few players I can run with and we want to play a full game. So collecting players", location: "Columbus Park", address: "86 St Belt Parkway", city: "Brooklyn" , state: "NY", zipcode: 11228, sport: "Baseball", players: 15, longitude: -74.0183365, latitude: 40.6034392)
