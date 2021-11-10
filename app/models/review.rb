class Review < ApplicationRecord
  belongs_to :restaurant
  validates_associated :restaurant

  validates :content, presence: true
  validates :rating, numericality: { only_integer: true }, acceptance: { accept: [0, 1, 2, 3, 4, 5] }, presence: true
end
