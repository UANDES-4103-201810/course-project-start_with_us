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

  def default_role
    if self.role_id == nil
      self.role_id = 1;

    end
  end
end