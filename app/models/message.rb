class Message < ApplicationRecord
  belongs_to :board

  scope :search, -> (name_parameter) { where("lower(author) like ?", "%#{name_parameter.downcase}%") }
end