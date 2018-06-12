class Founding < ApplicationRecord
  belongs_to :project
  belongs_to :user
  validates :mount, numericality: { greater_than: 0}
  before_create :create_token
  def create_token
    exist = true
    hash_value = ""
    while exist != nil
      values = "123455678890abcdefghijklmoprstuvwxyzABCDEFGHIJKLMOPQRSTUVWXYZ.+-_"
      hash_value = (0...100).map { (65 + rand(26)).chr }.join
      exist = Founding.find_by(token:hash_value)
    end
    self.token = hash_value
  end
end
