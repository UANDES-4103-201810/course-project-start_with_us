class User < ApplicationRecord
  before_create :default_role
  has_one :role
  has_one :profile
  has_many :projects
  accepts_nested_attributes_for :profile
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def default_role
    self.role_id = 1;
  end
end
