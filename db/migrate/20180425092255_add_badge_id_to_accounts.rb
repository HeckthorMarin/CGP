class AddBadgeIdToAccounts < ActiveRecord::Migration[5.1]
  def change
    add_reference :accounts, :badge, foreign_key: true
  end
end
