require 'rails_helper'

describe "search for an author route", :type => :request do
  before { board = Board.create!(author: "test_author", content: "test_content", id: 1) }

  let!(:messages) { FactoryBot.create_list(:message, 20) }

  before { get "/boards/1/messages?author=#{Message.first.author}"}

  it 'returns one message' do
    expect(JSON.parse(response.body).size).to eq(1)
  end

  it 'returns the quote with author: Jihadi John' do
    expect(JSON.parse(response.body).first['author']).to eq(Message.first.author)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end