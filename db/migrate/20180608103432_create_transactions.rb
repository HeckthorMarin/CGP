class CreateTransactions < ActiveRecord::Migration[5.1]
  def change
    create_table :transactions do |t|
      t.string :name
      t.string :type
      t.float :value
      t.datetime :date

      t.timestamps
    end
  end
end
