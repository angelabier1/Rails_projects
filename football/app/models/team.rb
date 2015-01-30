class Team < ActiveRecord::Base
	belongs_to :city
	has_one :coach
	validates :name, uniqueness: true
	validates :conference,  :division, :name, presence: true
	validates :no_naughty_names, :name, presence: true
	has_many :home_games, class_name: "Game", foreign_key: "home_team_id"
	has_many :away_games, class_name: "Game", foreign_key: "away_team_id"


	def division_rivals
			Team.where(conference: conference,
			           division: division).where.not(id: id)
	end

	# def won?
	#
	# end

  def no_naughty_names
		if %w(F*ck Sh*t).include?(name)
			errors.add(:name, "That name is terrible. Did you kiss your mother with that mouth?")
		end
  end

	def to_s
		if city.name == 'Boston'
			"New England #{name}"
		else
			"#{city} #{name}"
		end
	end
end