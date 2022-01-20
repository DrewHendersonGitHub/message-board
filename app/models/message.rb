class Message < ApplicationRecord
  belongs_to :board

  scope :search, -> (author_parameter) { where("lower(author) like ?", "%#{author_parameter.downcase}%") }
end