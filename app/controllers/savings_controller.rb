class SavingsController < ApplicationController
      before_action :authenticate_user!

    def index
        
        # @in_data=current_user.incomes
        # @exp_data=current_user.expenses
        # @in_exp_data=[]
        # @in_exp_data=@in_exp_data.push('income':@in_data,'expense':@exp_data)
    #    @in_exp_data= User.joins(:price_movements,:goods_movements).where("goods_movement.date = price_movement.date")
        # return render json:current_user.id
        @in_exp_data=Saving.get_savings_data(current_user.id)

        return render json:@in_exp_data

    end
    

end
