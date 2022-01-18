# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
class Seed

  def self.begin
    seed = Seed.new
    seed.generate_messages
  end

  def generate_messages
    board = Board.create!({author: Faker::Book.author, content: Faker::Movie.quote})
    20.times do |i|
      message = Message.create!({author: Faker::Book.author, content: Faker::Movie.quote, board_id: board.id})
      puts "Quote #{i}: Author is #{message.author} and the message is '#{message.content}'."
    end
  end

end

Seed.begin