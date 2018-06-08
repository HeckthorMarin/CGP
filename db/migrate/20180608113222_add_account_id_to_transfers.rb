class AddAccountIdToTransfers < ActiveRecord::Migration[5.1]
  def change
    add_reference :transfers, :account, foreign_key: true
  end
end
