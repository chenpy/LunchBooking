class CreateReserveLists < ActiveRecord::Migration
  def change
    create_table :reserve_lists do |t|
      t.integer :id
      t.string :name
      t.string :lunch
      t.string :note
      t.integer :price

      t.timestamps
    end
  end
end
