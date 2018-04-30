class AddNewValuesToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :asksecurityone, :string
    add_column :users, :answersecurityone, :string
    add_column :users, :asksecuritytwo, :string
    add_column :users, :answersecuritytwo, :string
  end
end
