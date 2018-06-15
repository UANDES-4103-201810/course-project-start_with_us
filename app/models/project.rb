class Project < ApplicationRecord
  belongs_to :user
  has_many :promises, :dependent => :delete_all
  has_many :foundings, :dependent => :delete_all
  has_many :multimedia_contents, :dependent => :delete_all
  has_many :wishlist_projects, :dependent => :delete_all
  has_many :project_category, :dependent => :delete_all
  has_many :category,through: :project_category
  accepts_nested_attributes_for :promises
  validates :goal_amount, numericality: {greater_than: 0}
  validate :date_validate


  def date_validate
    if self.delivery_date < Date.today
      return false
    end
  end

  def self.status_by_id
    return {1=>"waiting",2=>"published",3=>"rejected"}
  end

  def self.status_by_name
    return {"waiting"=>1,"published"=>2,"rejected"=>3}
  end

  def self.STATUS_WAITING
    1
  end


end
