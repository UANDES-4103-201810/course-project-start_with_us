class CreatePromises < ActiveRecord::Migration[5.1]
  def change
    create_table :promises do |t|
      t.references :project, foreign_key: true
      t.integer :price
      t.string :description
      t.integer :quantity

      t.timestamps
    end
  end
end
