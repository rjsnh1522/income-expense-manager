class ChangeCategoryToExpenseId < ActiveRecord::Migration[5.0]
  def change
        rename_column :expenses, :category, :expense_id
  end
end
