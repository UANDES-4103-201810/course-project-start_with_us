class Project < ApplicationRecord
  belongs_to :user
  has_many :promises
  has_many :foundings
  validates :goal_amount, greater_than: 0
  validates :delivery_date, greater_than: Date.today
end
