class AddEntityIdToAccounts < ActiveRecord::Migration[5.1]
  def change
    add_reference :accounts, :entity, foreign_key: true
  end
end
