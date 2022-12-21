class Tree < ApplicationRecord
  belongs_to :user
  has_many :adoptions, dependent: :destroy
  validates :name, :address, :fruit, :description, :quantity_per_year, :price_per_year, presence: true
  validates :fruit, inclusion: { in: ['Apple', 'Apricot', 'Cherry', 'Chestnut', 'Coconut tree', 'Fig', 'Grapefruit', 'Hazel', 'Mandarin', 'Mango', 'Mirabellier', 'Mulberry', 'Olivier', 'Orange', 'Pear', 'Plum'] }
  validates :description, length: { in: 20..280 }
  validates :quantity_per_year, numericality: { greater_than: 0 }
  validates :price_per_year, numericality: { greater_than: 0 }
end
