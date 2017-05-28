class ExpenseCategory < ApplicationRecord
    belongs_to :user
    belongs_to :expense, :class_name=>Expense,:foreign_key => "expense_cat_id"
#    belongs_to :expenses
end
