class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :owner_last_name
      t.string :owner_first_name
      t.string :pet_name
      t.text :text

      t.timestamps null: false
    end
  end
end
