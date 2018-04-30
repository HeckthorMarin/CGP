class AddTypeAccountIdToAccounts < ActiveRecord::Migration[5.1]
  def change
    add_reference :accounts, :type_account, foreign_key: true
  end
end
