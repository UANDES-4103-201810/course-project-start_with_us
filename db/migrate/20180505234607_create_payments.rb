class CreatePayments < ActiveRecord::Migration[5.1]
  def change
    create_table :payments do |t|
      t.references :promise, foreign_key: true
      t.references :fund
      t.references :project, foreign_key: true
      t.references :credit_card, foreign_key: true
      t.integer :amount

      t.timestamps
    end
  end
end
