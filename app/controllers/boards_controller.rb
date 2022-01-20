class BoardsController < ApplicationController

  def index
    @boards = Board.all
    json_response(@boards, :ok)
  end

  def show
    @board = Board.find(params[:id])
    json_response(@board, :ok)
  end

  def create
    @board = Board.create(board_params)
    json_response(@board, :created)
  end

  def update
    @board = Board.find(params[:id])
    if @board.update!(board_params)
      render status: 200, json: {
      message: "This board has been updated successfully."
      }
    end
  end

  def destroy
    @board = Board.find(params[:id])
    if @board.destroy
      render status: 200, json: {
        message: "This board has been deleted successfully."
      }
    end
  end

  private
  def board_params
    params.permit(:author, :content)
  end
end