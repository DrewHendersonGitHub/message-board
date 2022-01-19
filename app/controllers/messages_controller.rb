class MessagesController < ApplicationController

  def index
    if params[:name]
      name = params[:name]
      @messages = Message.search(name)
    else
      @messages = Message.all
    end
    json_response(@messages)
  end

  def show
    @message = Message.find(params[:id])
    json_response(@message)
  end

  def create
    @message = Message.create(message_params)
    json_response(@message)
  end

  def update
    @message = Message.find(params[:id])
    @message.update(message_params)
  end

  def destroy
    @message = Message.find(params[:id])
    @message.destroy
  end

  private
  def json_response(object, status = :ok)
    render json: object, status: status
  end

  def message_params
    params.permit(:author, :content, :board_id)
  end
end