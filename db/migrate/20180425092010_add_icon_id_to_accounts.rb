class AddIconIdToAccounts < ActiveRecord::Migration[5.1]
  def change
    add_reference :accounts, :icon, foreign_key: true
  end
end
