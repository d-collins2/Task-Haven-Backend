class Api::V1::TeamsController < ApplicationController
  def index
    render json: Team.all
  end

  def create
    @team = Team.new(name: params[:name])
    if @team.valid?
      @team.save
      TeamMember.create(user_id: params[:user_id], team_id: @team.id, admin:true)
      @members_id = params[:team_members]
      @members_id.each{|id| TeamMember.create(user_id: id.to_i, team_id: @team.id) }
    end
    render json: @team
  end

  def show
    render json: Team.all.find(params[:id])
  end
end
