require 'rails_helper'

describe "get all messages route", :type => :request do
  before { board = Board.create!(author: "test_author", content: "test_content", id: 1) }
  let!(:messages) { FactoryBot.create_list(:message, 20)}

  before { get '/boards/1/messages'}

  it 'returns all messages' do
    expect(JSON.parse(response.body).size).to eq(20)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end
