class Expense < ApplicationRecord

    has_many :expense_categories, dependent: :destroy
    has_many :users, through: :expense_categories
    
    validates :name, :amount,:tax, presence: true
    validates :name, format: { with: /\A([a-zA-Z]|[a-zA-Z][\. ])+\z/ }

    validates :amount,:tax,:tip, :numericality => {:only_float => true}


      def self.get_months_data
        month_name=Date.today.month
        Expense.where('extract(month from created_at) = ?', month_name)
    end

    



end
