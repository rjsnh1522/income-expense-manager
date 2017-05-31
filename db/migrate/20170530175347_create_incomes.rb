class CreateIncomes < ActiveRecord::Migration[5.0]
  def change
    create_table :incomes do |t|
      t.integer :user_id
      t.string :name
      t.float :amount
      t.integer :income_cat_id
      t.string :description
      t.timestamps
    end
  end
end
