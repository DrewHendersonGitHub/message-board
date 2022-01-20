require 'rails_helper'

describe "delete a board route", :type => :request do

  let!(:boards) {FactoryBot.create_list(:board, 20)}
  before do
    delete "/boards/#{Board.first.id}"
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(200)
  end

  it 'returns a deleted success status message' do
    expect(JSON.parse(response.body)['message']).to eq("This board has been deleted successfully.")
  end
end