class TeamController < ApplicationController

	def index
		@teams = Team.all
	end
	def show
		@team = Team.find(params[:id])
	end

	def edit
		@team = Team.find(params[:id])
	end

	
	
end
