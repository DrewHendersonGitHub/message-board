require 'rails_helper'

describe "post a board route", :type => :request do

  before do 
    post '/boards', params: { :author => 'test_author', :content => 'test_content' }
  end

  it 'returns the author name' do
    expect(JSON.parse(response.body)['author']).to eq('test_author')
  end

  it 'returns the board content' do 
    expect(JSON.parse(response.body)['content']).to eq ('test_content')
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:created)
  end
end