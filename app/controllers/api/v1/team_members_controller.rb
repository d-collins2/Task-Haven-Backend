class Api::V1::TeamMembersController < ApplicationController
  def index
   render json: TeamMember.all
  end

  def create
    render json: TeamMember.create(team_member_params)
  end

  private
  def team_member_params
    params.require(:team_member).permit(
      :user_id,
      :team_id,
    )
  end
end
