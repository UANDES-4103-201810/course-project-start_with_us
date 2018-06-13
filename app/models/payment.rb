class Payment < ApplicationRecord
  belongs_to :promise , optional: true
  belongs_to :credit_card
  belongs_to :project
  before_create :create_token
  def create_token
    exist = true
    hash_value = ""
    while exist != nil
      values = "123455678890abcdefghijklmoprstuvwxyzABCDEFGHIJKLMOPQRSTUVWXYZ.+-_"
      hash_value = (0...100).map { (65 + rand(26)).chr }.join
      exist = Payment.find_by(token:hash_value)
    end
    self.token = hash_value
  end
end
