class Api::V1::TasksController < ApplicationController
  def index
    render json: Task.all
  end

  def show
    render json: Task.all.find(params[:id])
  end

  def create
    render json: Task.create(task_params)
  end

  private
  def task_params
    params.require(:task).permit(:name, :list_id)
  end
end
