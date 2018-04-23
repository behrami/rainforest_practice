class Review < ApplicationRecord
  belongs_to :product
  belongs_to :customer

  validates :content, presence: true, length: {minimum: 4}
end
