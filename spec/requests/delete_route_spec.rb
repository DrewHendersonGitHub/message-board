require 'rails_helper'

describe "delete a message route", :type => :request do

  before { board = Board.create!(author: "test_author", content: "test_content", id: 1) }

  let!(:messages) {FactoryBot.create_list(:message, 20)}
  before do
    @message_id = Message.first.id
    delete "/boards/1/messages/#{@message_id}"
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(200)
  end

  it 'returns a deleted success status message' do
    expect(JSON.parse(response.body)['message']).to eq("This message has been deleted successfully.")
  end
end