class CreateExpenses < ActiveRecord::Migration[5.0]
  def change
    create_table :expenses do |t|
      t.integer :user_id
      t.string :name
      t.float :amount
      t.float :tax
      t.float :tip
      t.string :category
      t.string :description

      t.timestamps
    end
  end
end
