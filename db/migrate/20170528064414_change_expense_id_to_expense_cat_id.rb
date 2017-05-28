class ChangeExpenseIdToExpenseCatId < ActiveRecord::Migration[5.0]
  def change
    rename_column :expenses, :expense_id, :expense_cat_id
    change_column :expenses, :expense_cat_id, :integer
  end
end
