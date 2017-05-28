class CreateExpenseCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :expense_categories do |t|
      t.string :expense_type
      t.string :expense_name
      t.timestamps
    end
  end
end
