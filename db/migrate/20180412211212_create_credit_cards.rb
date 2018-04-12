class CreateCreditCards < ActiveRecord::Migration[5.1]
  def change
    create_table :credit_cards do |t|
      t.integer :number
      t.references :card_type, foreign_key: true
      t.string :user

      t.timestamps
    end
  end
end
