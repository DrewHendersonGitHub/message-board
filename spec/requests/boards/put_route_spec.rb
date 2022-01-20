require 'rails_helper'

describe "update a board route", :type => :request do
  let!(:boards) { FactoryBot.create_list(:board, 20)}
  before do 
    put "/boards/#{Board.first.id}", params: { :author => 'test_update_author' , :content => 'updated_test_content' }
  end
  
  it 'returns status code 200' do
    expect(response).to have_http_status(200)
  end

  it 'returns an updated status message' do
    expect(JSON.parse(response.body)['message']).to eq("This board has been updated successfully.")
  end

  it 'should have a new author and content' do
    expect(Board.first.author).to eq("test_update_author")
    expect(Board.first.content).to eq("updated_test_content")
  end
end