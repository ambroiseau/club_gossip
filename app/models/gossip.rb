class Gossip < ApplicationRecord
  belongs_to :user, optional: true
  has_many :comments
  validates :title, presence: true, length: { minimum: 5 }
end
