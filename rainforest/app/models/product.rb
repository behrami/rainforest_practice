class Product < ApplicationRecord
  has_many :reviews
  has_many :customers, through: :reviews

  validates :name, presence: true, length: {minimum: 4}
  validates :description, presence: true
  validates :price, presence: true, numericality: {only_integer: true, :greater_than_or_equal_to => 0}
end
