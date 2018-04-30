class CreateIcons < ActiveRecord::Migration[5.1]
  def change
    create_table :icons do |t|
      t.string :ref_icon

      t.timestamps
    end
  end
end
