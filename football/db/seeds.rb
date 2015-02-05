# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
SportsDataApi.set_key(:nfl, '2fhaxup3q39q26atwekyfqej')

schedule = SportsDataApi::Nfl.schedule(2014,:REG)

schedule.weeks.each do |week|
	week.games.each do |game|
		#now there's a game object that has home string, away string, and week
		box = SportsDataApi::Nfl.boxscore(2014, :REG, game.week,game.home, game.away)
		sleep(1)
home_team_id = Team.where(name:box.home_team.name).pluck(:id).first
away_team_id = Team.where(name:box.away_team.name).pluck(:id).first

Game.create(quoted_date: box.scheduled, home_team_id: home_team_id,away_team_id: away_team_id, home_score: box.home_team.points,
						away_score: box.away_team.points)

	end
end







# home_teams = schedule.weeks.collect do |week|
# 	week.games.collect do |game|
# 		game.home #returns a string like "IND", "SEA", etc..
# 	end
# end.flatten #puts all the home team strings in 1 flat array
#
# away_teams = schedule.weeks.collect do |weeks|
# 	weeks.games.collect do |game|
# 		game.away
# 	end
# end
#
# weeks = schedule.weeks.collect do |week|
# 	week.games.collect do |game|
# 		game.week
# 	end
# end
#
# #must use square brackets because each is in an array
# 256.times do |n|
# 	box = SportsDataApi::Nfl.boxscore(2014, :REG, weeks[n],home_teams[n], away_teams[n])
# end

