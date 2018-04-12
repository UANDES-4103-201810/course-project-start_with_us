class CreateFoundings < ActiveRecord::Migration[5.1]
  def change
    create_table :foundings do |t|
      t.references :project, foreign_key: true
      t.references :user, foreign_key: true
      t.integer :mount
      t.string :state

      t.timestamps
    end
  end
end
