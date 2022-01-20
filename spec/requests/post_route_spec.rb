require 'rails_helper'

describe "post a message route", :type => :request do
  before { board = Board.create!(author: "test_author", content: "test_content", id: 1) }

  before do 
    post '/boards/1/messages', params: { :author => 'test_author', :content => 'test_content' }
  end

  it 'returns the author name' do
    expect(JSON.parse(response.body)['author']).to eq('test_author')
  end

  it 'returns the message content' do 
    expect(JSON.parse(response.body)['content']).to eq ('test_content')
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:created)
  end
end