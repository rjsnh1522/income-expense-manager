class Saving < ApplicationRecord



    def self.get_savings_data(user_id)

     User.joins(:expenses,:incomes).select('incomes.*').where("expenses.user_id = incomes.user_id")

    end
    


end
