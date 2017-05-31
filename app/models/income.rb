class Income < ApplicationRecord
    belongs_to :user
    belongs_to :expense

    validates :name, :amount, presence: true
    validates :name, format: { with: /\A([a-zA-Z]|[a-zA-Z][\. ])+\z/ }

    validates :amount, :numericality => {:only_float => true}


    def self.get_months_data
        month_name=Date.today.month
        
        Income.where('extract(month from created_at) = ?', month_name)
    end
    



end
