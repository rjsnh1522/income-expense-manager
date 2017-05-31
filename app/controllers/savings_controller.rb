class SavingsController < ApplicationController
      before_action :authenticate_user!

    def index
        
        @in_data=current_user.incomes
        @exp_data=current_user.expenses
        @in_exp_data=[]
        @in_exp_data=@in_exp_data.push('income':@in_data,'expense':@exp_data)
        # return render json:@in_exp_data

    end
    

end
