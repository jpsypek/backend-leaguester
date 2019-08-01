# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Player.destroy_all
Team.destroy_all
TeamPlayer.destroy_all
League.destroy_all
Organization.destroy_all

mile_high = Organization.create(name: "Play Mile High")
tues_soccer = League.create(sport: "Soccer", sex: "Coed", organization: mile_high, day: "Tuesday", season: "Summer" )
jack = Player.create(first_name: "Jack", last_name: "Sypek")
slayers = Team.create(name: "Dragon Slayers", league: tues_soccer)
TeamPlayer.create(player: jack, team: slayers)
