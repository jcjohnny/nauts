# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Article.create(title: "3v3 Pickup Gam", body: "I wanna run a pickup game at this park where i live" , address: "775 New York Ave",  city: "brooklyn", state: "NY" , zipcode: 11203, sport: "basketball", players: 6)
Article.create(title: "Full Court Exhibition", body: "A full court exhibition Game, Cost is 10 dollars 15 players", address: "1987 west 10",  city: "brooklyn", state: "NY", zipcode: 11223, sport: "basketball", players: 15)
Article.create(title: "small pickup game", body: "small pickup game", address: "Washington Ave", city:  "brooklyn", state: "NY", zipcode: 11205, sport: "football", players: 10)
Article.create(title: "big soccer game", body: "I have a few players I can run with and we want to play a full game. So collecting players", address: "Central Park", city: "New York" , state: "NY", zipcode: 10128, sport: "soccor", players: 20)
Article.create(title: "Baseball season just started, Lets play ball", body: "I have a few players I can run with and we want to play a full game. So collecting players", address: "86 St Belt Parkway", city: "Brooklyn" , state: "NY", zipcode: 11228, sport: "Baseball", players: 15)
