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

end
