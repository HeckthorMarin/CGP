class CreateImages < ActiveRecord::Migration[5.1]
  def change
    create_table :images do |t|
      t.string :ref_image

      t.timestamps
    end
  end
end
