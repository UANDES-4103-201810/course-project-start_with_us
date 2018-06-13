class Profile < ApplicationRecord
  belongs_to :user
  has_one :multimedia_content
  accepts_nested_attributes_for :multimedia_content
  validates_format_of :name, :last_name, :with => /[a-z]+/i,:message => "can only contain letters"
  validates :user, presence: true
end
