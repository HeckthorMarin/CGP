class AddTransactionIdToTransfers < ActiveRecord::Migration[5.1]
  def change
    add_reference :transfers, :transaction, foreign_key: true
  end
end
