class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.belongs_to :user
      t.string :name
      t.string :last_name
      t.string :about_me

      t.timestamps
    end
  end
end
