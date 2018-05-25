class Founding < ApplicationRecord
  belongs_to :project
  belongs_to :user
  validates :mount, numericality: { greater_than: 0}

end
