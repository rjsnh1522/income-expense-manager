class ExpensesController < ApplicationController
  before_action :set_expense, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!

  # GET /expenses
  # GET /expenses.json
  def index
    @expenses = Expense.where(:user_id=>current_user.id)

    # return render json:@expenses

  end

  # GET /expenses/1
  # GET /expenses/1.json
  def show
    # return render json:@expense
  end

  # GET /expenses/new
  def new
    @expense = Expense.new
    @expense_data=Expense.where(:user_id=>current_user.id)
    @expense_data = @expense_data.get_months_data

    # return render json:@expense_data

  end

  # GET /expenses/1/edit
  def edit
        @expense_data=Expense.where(:user_id=>current_user.id)
  end

  # POST /expenses
  # POST /expenses.json
  def create
    @expense = Expense.new(expense_params)

    respond_to do |format|
      if @expense.save
        format.html { redirect_to action: :new, notice: 'Expense was successfully created.' }
        format.json { render :show, status: :created, location: @expense }
      else
        format.html { render :new }
        format.json { render json: @expense.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /expenses/1
  # PATCH/PUT /expenses/1.json
  def update
    respond_to do |format|
      if @expense.update(expense_params)
        format.html { redirect_to @expense, notice: 'Expense was successfully updated.' }
        format.json { render :show, status: :ok, location: @expense }
      else
        format.html { render :edit }
        format.json { render json: @expense.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /expenses/1
  # DELETE /expenses/1.json
  def destroy
    @expense.destroy
    respond_to do |format|
      format.html { redirect_to expenses_url, notice: 'Expense was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_expense
      @expense = Expense.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def expense_params
      params.require(:expense).permit(:name, :amount, :tax, :tip, :expense_cat_id, :description).merge(user_id: current_user.id)
    end
end
