class User < ApplicationRecord
  has_many :categories
  has_many :movements

  validates :name, presence: true, length: { maxium: 50 }
end
