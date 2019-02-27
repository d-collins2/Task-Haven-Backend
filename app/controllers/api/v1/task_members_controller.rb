class Api::V1::TaskMembersController < ApplicationController
  def index
    render json: TaskMember.all
  end
end
