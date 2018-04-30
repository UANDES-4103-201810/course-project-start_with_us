class Profile < ApplicationRecord
  belongs_to :user
  has_one :multimedia_contents
  validates_format_of :name, :last_name, :with => /[a-z]+/i,:message => "can only contain letters"
  validates :user, presence: true
end
