class Promise < ApplicationRecord
  belongs_to :project
  has_many :items
  validates :price, numericality: {greater_than: 0}
  validates :quantity, numericality: {greater_than: 0}
end
