class MessagesController < ApplicationController

  def index
    if params[:author]
      @messages = Message.search(params[:author])
    elsif !params[:page]
      @messages = Message.all
    else
      @messages = Message.paginate(page: params[:page], per_page: 5)
    end
    json_response(@messages, :ok)
  end

  def show
    @message = Message.find(params[:id])
    json_response(@message, :ok)
  end

  def create
    @message = Message.create(message_params)
    json_response(@message, :created)
  end

  def update
    @message = Message.find(params[:id])
    if @message.update!(message_params)
      render status: 200, json: {
      message: "This message has been updated successfully."
      }
    end
  end

  def destroy
    @message = Message.find(params[:id])
    if @message.destroy
      render status: 200, json: {
        message: "This message has been deleted successfully."
      }
    end
  end

  private
  def message_params
    params.permit(:author, :content, :board_id)
  end
end