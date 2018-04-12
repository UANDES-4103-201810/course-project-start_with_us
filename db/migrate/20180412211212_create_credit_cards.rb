class CreateCreditCards < ActiveRecord::Migration[5.1]
  def change
    create_table :credit_cards do |t|
      t.integer :number
      t.belongs_to :card_type
      t.string :user

      t.timestamps
    end
  end
end
