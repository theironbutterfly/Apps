class MembersController < ApplicationController
  # GET /posts

  # POST /teams/members
  # POST /teams/members.json
  def create
    @team = Team.find(params[:team_id])
    @member = @team.members.create(params[:member])
    redirect_to team_path(@team)
  end
end