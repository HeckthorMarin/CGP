class CreateAccounts < ActiveRecord::Migration[5.1]
  def change
    create_table :accounts do |t|
      t.string :title
      t.float :begBalance
      t.float :curBalance
      t.text :note

      t.timestamps
    end
  end
end
