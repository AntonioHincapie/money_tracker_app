class Movement < ApplicationRecord
  has_many :clasifications
  has_many :categories, through: :clasifications
  belongs_to :author, class_name: 'User', foreign_key: 'user_id'
  
  validates :name, presence: true, length: { maxium: 50 }
  validates :amount, presence: true, numericality: { greater_than: 0 }
end
