class Promise < ApplicationRecord
  belongs_to :project

  validates :price, greater_than: 0
  validates :quantity, greater_than: 0
end
