class CardType < ApplicationRecord
  has_many :credit_cards
  validates :company, length: {minimum: 0, maximum: 10 }
end
