class AddTransactionIdToExpenses < ActiveRecord::Migration[5.1]
  def change
    add_reference :expenses, :transaction, foreign_key: true
  end
end
