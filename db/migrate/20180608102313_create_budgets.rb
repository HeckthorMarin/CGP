class CreateBudgets < ActiveRecord::Migration[5.1]
  def change
    create_table :budgets do |t|
      t.string :category
      t.float :begBalance
      t.float :curBalance

      t.timestamps
    end
  end
end
