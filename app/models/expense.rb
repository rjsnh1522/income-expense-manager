class Expense < ApplicationRecord
    validates :name, :amount,:tax, presence: true
    validates :amount,:tax,:tip, :numericality => {:only_integer => true}
end
