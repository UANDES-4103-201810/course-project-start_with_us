class User < ApplicationRecord
  before_create :default_role
  has_one :wishlist, dependent: :destroy
  belongs_to :role
  has_one :profile, dependent: :destroy
  has_many :projects, dependent: :destroy
  has_many :credit_cards, dependent: :delete_all
  accepts_nested_attributes_for :profile
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def default_role
    if self.role_id == nil
      self.role_id = 1;

    end
  end
end