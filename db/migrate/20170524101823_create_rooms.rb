class CreateRooms < ActiveRecord::Migration[5.1]
  def change
    create_table :rooms do |t|
      t.string :type
      t.string :size
      t.float :price
      t.text :note

      t.timestamps
    end
  end
end
