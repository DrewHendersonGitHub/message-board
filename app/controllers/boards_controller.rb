class BoardsController < ApplicationController

  def index
    @boards = Board.all
    json_response(@boards)
  end

  def show
    @board = Board.find(params[:id])
    json_response(@board)
  end

  def create
    @board = Board.create(board_params)
    json_response(@board)
  end

  def update
    @board = Board.find(params[:id])
    @board.update(board_params)
  end

  def destroy
    @board = Board.find(params[:id])
    @board.destroy
  end

  private
  def json_response(object, status = :ok)
    render json: object, status: status
  end

  def board_params
    params.permit(:author, :content)
  end
end