class Project < ApplicationRecord
  belongs_to :user
  has_many :promises
  has_many :foundings
  has_many :multimedia_contents
  validates :goal_amount, numericality: {greater_than: 0}
  validate :date_validate

  def date_validate
    if self.delivery_date < Date.today
      return false
    end
  end
end
