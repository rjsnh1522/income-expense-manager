class CreateIncomeCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :income_categories do |t|
      t.string :income_type
      t.string :income_name
      t.timestamps
    end
  end
end
