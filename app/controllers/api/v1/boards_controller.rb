class Api::V1::BoardsController < ApplicationController
  def index
    render json: Board.all
  end

  def show
    render json: Board.all.find(params[:id])
  end

  def create
    render json: Board.create(board_params)
  end

  def destroy
    @board = Board.find(params[:id])
    @board.destroy
  end

  private
  def board_params
    params.require(:board).permit(:name, :team_id)
  end
end
