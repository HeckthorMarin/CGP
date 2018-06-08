class AddTransactionIdToIncomes < ActiveRecord::Migration[5.1]
  def change
    add_reference :incomes, :transaction, foreign_key: true
  end
end
