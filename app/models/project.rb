class Project < ApplicationRecord
  belongs_to :user
  has_many :promises
  has_many :foundings
  has_many :multimedia_contents
  has_many :project_categories
  has_many :categories,through: :project_categories
  validates :goal_amount, numericality: {greater_than: 0}
  validate :date_validate

  def date_validate
    if self.delivery_date < Date.today
      return false
    end
  end

  def self.status_by_id
    return {1=>"Waiting",2=>"Published",3=>"Rejected"}
  end

  def self.status_by_name
    return {"Waiting"=>1,"Published"=>2,"Rejected"=>3}
  end
end
