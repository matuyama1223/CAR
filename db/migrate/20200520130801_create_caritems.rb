class CreateCaritems < ActiveRecord::Migration[5.2]
  def change
    create_table :caritems do |t|
      t.string :name
      t.text :text
      t.string :carimage_id
      t.integer :price
      t.timestamps
    end
  end
end
