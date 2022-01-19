class Message < ApplicationRecord
  belongs_to :board

  scope :search, -> (name_parameter) { where("author like ?", "%#{name_parameter}%") }
end