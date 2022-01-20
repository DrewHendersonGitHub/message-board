FactoryBot.define do 
  factory(:message) do
    author {Faker::Name.name}
    content {Faker::Movie.quote}
    board_id {1}
  end
end

# Faker::Number.number(digits: 1)