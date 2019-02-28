class Api::V1::ListsController < ApplicationController
  def index
    render json: List.all
  end

  def show
    render json: List.all.find(params[:id])
  end

  def create
    render json: List.create(board_params)
  end

  def destroy
    @list = List.find(params[:id])
    @list.destroy
  end

  private
  def board_params
    params.require(:list).permit(:name, :board_id)
  end
end
