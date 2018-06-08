class AddCategoryIdToBudgets < ActiveRecord::Migration[5.1]
  def change
    add_reference :budgets, :category, foreign_key: true
  end
end
