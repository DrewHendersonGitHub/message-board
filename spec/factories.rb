FactoryBot.define do 
  factory(:message) do
    author {Faker::Name.name}
    content {Faker::Movie.quote}
    board_id {1}
  end

  factory(:board) do
    author {Faker::JapaneseMedia::OnePiece.character}
    content {Faker::Games::LeagueOfLegends.location}
  end
end