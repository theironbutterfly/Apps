class MeetingsController < ApplicationController
  # GET /posts

  # POST /teams/meetings
  # POST /teams/meetings.json
  def create
    @team = Team.find(params[:team_id])
    @meeting = @team.meetings.create(params[:meeting])
    redirect_to team_path(@team)
  end
end
