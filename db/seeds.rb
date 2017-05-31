# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
expense_type_list = [
  [ "Mortgage or rent", 'fixed' ],
  [ "Loans ", 'fixed' ],
  [ "Insurance ", 'fixed' ],
  [ "Daycare", 'fixed' ],
  [ "Tuition", 'fixed' ],
  [ "Utilities", 'fixed' ],
  [ "Groceries", 'Discretionary' ],
  [ "Eating at restaurants", 'Discretionary' ],
  [ "Clothing", 'Discretionary' ],
  [ "Entertainment", 'Discretionary' ],
  [ "Travel", 'Discretionary' ],
  [ "Hobbies", 'Discretionary' ],
  [ "Gifts", 'Discretionary' ]
  
]

expense_type_list.each do |expense_name, expense_type|
  ExpenseCategory.create( expense_name: expense_name, expense_type: expense_type )
end



income_type_list = [
  [ "Working a job", 'Earned Income' ],
  [ "Owning a small business", 'Earned Income' ],
  [ "Consulting ", 'Earned Income' ],
  [ "Gambling", 'Earned Income' ],
  [ "Any other activity that pays based on time/effort spent", 'Earned Income' ],
  [ "Paper Assets", 'Portfolio Income' ],
  [ "Real Estate", 'Portfolio Income' ],
  [ "Any other Assets ", 'Portfolio Income' ],
  [ "Rental Income or Note Income from Real Estate", 'Passive Income' ],
  [ "Business Income", 'Passive Income' ],
  [ "Creating and Selling Intellectual Property ", 'Passive Income' ],
  [ "Affiliate or Multi-Level Marketing", 'Passive Income' ]
 
  
]

income_type_list.each do |income_name, income_type|
  IncomeCategory.create( income_name: income_name, income_type: income_type )
end