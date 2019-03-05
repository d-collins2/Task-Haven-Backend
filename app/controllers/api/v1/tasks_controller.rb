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

  def update
    @task = Task.all.find(params[:id])
    @task.update(update_params)
    render json: @task
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
  end

  private
  def update_params
    params.require(:task).permit( :list_id)
  end

  def task_params
    params.require(:task).permit(:name, :list_id, :due_date, :descritption)
  end
end
