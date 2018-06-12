class User < ApplicationRecord
  before_create :default_role
  has_one :wishlist
  belongs_to :role
  has_one :profile
  has_many :projects
  has_many :credit_cards
  accepts_nested_attributes_for :profile
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  before_create :create_token

  def create_token
    exist = true
    hash_value = ""
    while exist != nil
      values = "123455678890abcdefghijklmoprstuvwxyzABCDEFGHIJKLMOPQRSTUVWXYZ.+-_"
      hash_value = (0...100).map { (65 + rand(26)).chr }.join
      exist = User.find_by(token:hash_value)
    end
    self.token = hash_value
  end

  def default_role
    if self.role_id == nil
      self.role_id = 1;

    end
  end
end