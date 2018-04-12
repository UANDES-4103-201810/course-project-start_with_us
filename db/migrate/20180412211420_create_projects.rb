class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.belongs_to :user
      t.string :title
      t.string :description
      t.integer :goal_amount
      t.string :status
      t.date :delivery_date

      t.timestamps
    end
  end
end
