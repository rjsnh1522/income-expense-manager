module ExpensesHelper
    def show_errors(object, field_name)
        if object.errors.any?
            if !object.errors.messages[field_name].blank?
            object.errors.messages[field_name].join(", ")
            end
        end
    end 

    def get_name
        current_user
    end


    def get_expense_cat_name(id)
            ExpenseCategory.where(:id=>id).select("expense_name").first
    end
    

end
