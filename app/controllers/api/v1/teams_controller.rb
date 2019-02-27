class Api::V1::TeamsController < ApplicationController
  def index
    render json: Team.all
  end

  def create
    @team = Team.new(name: params[:name])
    if @team.valid?
      @team.save
      TeamMember.create(user_id: params[:user_id], team_id: @team.id, admin:true)
    end
    render json: @team
  end

  def show
    render json: Team.all.find(params[:id])
  end
end
