# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

manager = Manager.create({name: "Ben"})
pro_team = ProTeam.create({name: "SKT"})
players = Player.create([{name: "Flash"},{name: "BByong"}])
fantasy_team = FantasyTeam.create({name: "bigbenjiblue", pro_team: pro_team, manager: manager,
	           main_players: [players.first], anti_players: [players.last]})