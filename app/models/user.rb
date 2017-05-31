class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

   has_many :expense_categories, dependent: :destroy
   has_many :expenses, through: :expense_categories

   has_many :income_categories, dependent: :destroy
   has_many :incomes, through: :income_categories
   has_many :incomes
   has_many :expenses




  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
