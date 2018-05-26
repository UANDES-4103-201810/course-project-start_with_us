class Category < ApplicationRecord
  has_many :project_category
  has_many :project,through: :project_category
end
