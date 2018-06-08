class AddBadgeIdToTransactions < ActiveRecord::Migration[5.1]
  def change
    add_reference :transactions, :badge, foreign_key: true
  end
end
