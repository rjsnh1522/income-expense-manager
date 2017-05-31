class IncomeCategory < ApplicationRecord
    belongs_to :user
    belongs_to :income, :class_name=>Income,:foreign_key => "income_cat_id"
end
