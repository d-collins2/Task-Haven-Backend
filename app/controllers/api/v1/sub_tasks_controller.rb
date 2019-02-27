class Api::V1::SubTasksController < ApplicationController
  def index
    render json: SubTask.all
  end
end
