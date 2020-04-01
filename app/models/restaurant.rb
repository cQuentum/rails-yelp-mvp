class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true
  validates :name, length: { minimum: 2 }
  validates :address, length: { minimum: 2 }
  validates :category, inclusion: { in: %w(chinese italian japanese french belgian) }
end
