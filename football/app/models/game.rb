class Game < ActiveRecord::Base
	belongs_to :home_team, class_name: "Team"
  belongs_to :away_team, class_name: "Team"


	def final_score
		if home_score
			"#{home_score}--#{away_score}"
		else
			nil
		end
	end

	def update_coach_win_loss
		#this should make the coach of the winning team have one more win
		#and the coach of the losing team have one more loss
		winning_coach.update_attribute :wins, winning_coach.wins + 1
	end

	def winning_coach
		#what does it mean to be a winning coach?
		winning_team.coach
	end

	def losing_coach
		#if not the coach of the winning team then losing coach
		#there's a home team, an away team and a winning team
		#if the home team is the winning team, away_team.coach
		#if the home team is not the winning team, home_team.coach
		if home_team == winning_team
			away_team.coach
		else
			home_team.coach
		end
	end

	def winning_team
		#what does it mean to be a winning team?
		#all the game knows about is the home team and away team
		if home_score > away_score
			home_team
		else
			away_team
		end
	end

end
