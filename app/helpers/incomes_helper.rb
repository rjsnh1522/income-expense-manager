module IncomesHelper

def get_name
        current_user
    end
     def get_income_cat_name(id)
            IncomeCategory.where(:id=>id).select("income_name").first
    end
end
