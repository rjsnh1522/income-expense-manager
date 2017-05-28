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

    def expense_name(id)
        if id.present?
            name=ExpenseCategory.where(:id=>id)
            name.expense_name
        else
            []
        end
        

    end

end
