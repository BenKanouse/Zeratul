# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

manager = Manager.create({name: "Ben"})
pro_team = ProTeam.create({name: "SKT"})
pro_team_2 = ProTeam.create({name: "CJ"})
players = Player.create([{name: "Flash"},{name: "BByong"}])
players.first.pro_team = pro_team
players.last.pro_team = pro_team_2
players.each(&:save!)
match = Match.new()
match.pro_teams = [pro_team, pro_team_2]
match.save!
game = Game.create({number: 1, match: match})
players_game = PlayersGame.new({game: game, player: players.first, win: true})
players_game_2 = PlayersGame.new({game: game, player: players.last, win: false})
league = League.create({name: "conservative_party_house"})
fantasy_team = FantasyTeam.create({name: "bigbenjiblue", pro_team: pro_team, manager: manager,
	           main_players: [players.first], anti_players: [players.last],
	           leagues: [league]})