# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.create(email: 'test@email.com', password: 'testing12345')
manager = Manager.create({name: "Ben", user: user})
pro_team = ProTeam.create({name: "SKT"})
pro_team_2 = ProTeam.create({name: "CJ"})
pro_players = ProPlayer.create([{name: "Flash"},{name: "BByong"}])
pro_players.first.pro_teams = [pro_team]
pro_players.last.pro_teams = [pro_team_2]
pro_players.each(&:save!)
pro_league = ProLeague.create(name: "kespa")
pro_league.pro_players = pro_players
pro_league.save!
brawl = Brawl.new()
brawl.pro_teams = [pro_team, pro_team_2]
brawl.save!
throwdown = Throwdown.create({set: 1, brawl: brawl})
pro_players_game = ProPlayersThrowdown.new({throwdown: throwdown, pro_player: pro_players.first, win: true})
pro_players_game_2 = ProPlayersThrowdown.new({throwdown: throwdown, pro_player: pro_players.last, win: false})
league = League.create({name: "conservative_party_house"})
fantasy_team = FantasyTeam.create({name: "bigbenjiblue", pro_team: pro_team, manager: manager,
                main_pro_players: [pro_players.first], anti_pro_players: [pro_players.last],
                leagues: [league]})
