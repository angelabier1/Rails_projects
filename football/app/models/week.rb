class Week < ActiveRecord::Base
	belongs_to :season

	BASE_URL = 'http://api.sportsdatallc.org/'

	def api_key
		"api_key=2fhaxup3q39q26atwekyfqej"
	end

	def base_path
		"/nfl-t1/2014/REG/"
	end

	def format
		"json"
	end

	def self.schedule
		url = "#{BASE_URL}schedule.#{format}?#{api_key}"
		response = HTTParty.get(url)
		week_data = JSON.parse(response)
		weeks = week_data.map do |line|
			w = Week.new
		end
	end


end
