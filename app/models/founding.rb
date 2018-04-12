class Founding < ApplicationRecord
  belongs_to :project
  belongs_to :user
end
