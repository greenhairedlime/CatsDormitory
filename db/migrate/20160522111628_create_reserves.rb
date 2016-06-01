class CreateReserves < ActiveRecord::Migration
  def change
    create_table :reserves do |t|
      t.string :room_type
      t.string :owner_last_name
      t.string :owner_first_name
      t.string :patronymic
      t.string :pet_name
      t.text :notes

      t.timestamps null: false
    end
  end
end
