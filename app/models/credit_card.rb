class CreditCard < ApplicationRecord
  belongs_to :user
  belongs_to :card_type

  validates :user, presence: true
  validates :number, greater_than: 10
end
