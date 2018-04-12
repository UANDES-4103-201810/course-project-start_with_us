class CreateFoundings < ActiveRecord::Migration[5.1]
  def change
    create_table :foundings do |t|
      t.belongs_to :project
      t.belongs_to :user
      t.integer :mount
      t.string :state

      t.timestamps
    end
  end
end
