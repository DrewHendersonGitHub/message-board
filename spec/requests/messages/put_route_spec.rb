require 'rails_helper'

describe "update a message route", :type => :request do
  before { board = Board.create!(author: "test_author", content: "test_content", id: 1) }

  let!(:messages) { FactoryBot.create_list(:message, 20)}
  before do 
    put "/boards/1/messages/#{Message.first.id}", params: { :author => 'test_update_author' , :content => 'updated_test_content' }
  end
  
  it 'returns status code 200' do
    expect(response).to have_http_status(200)
  end

  it 'returns an updated status message' do
    expect(JSON.parse(response.body)['message']).to eq("This message has been updated successfully.")
  end

  it 'should have a new author and content' do
    expect(Message.first.author).to eq("test_update_author")
    expect(Message.first.content).to eq("updated_test_content")
  end
end