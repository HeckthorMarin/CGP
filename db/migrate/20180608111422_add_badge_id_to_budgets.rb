class AddBadgeIdToBudgets < ActiveRecord::Migration[5.1]
  def change
    add_reference :budgets, :badge, foreign_key: true
  end
end
