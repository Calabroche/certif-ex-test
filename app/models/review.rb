class Review < ApplicationRecord
  belongs_to :adoption
  belongs_to :user
  validates :rating, :content, presence: true
  validates :rating, numericality: { in: 0..5, only_integer: true, greater_than: 0 }
  validates :content, length: { in: 3..114 }
end
