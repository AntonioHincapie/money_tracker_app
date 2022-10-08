class Category < ApplicationRecord
  has_many :clasifications, dependent: :destroy
  has_many :movements, through: :clasifications
  belongs_to :author, class_name: 'User', foreign_key: 'user_id'

  validates :name, presence: true, length: { maximum: 50 }
  validates :icon, presence: true
end
