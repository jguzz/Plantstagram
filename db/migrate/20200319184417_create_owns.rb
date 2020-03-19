class CreateOwns < ActiveRecord::Migration[6.0]
  def change
    create_table :owns do |t|
      t.string :nickname
      t.integer :plant_id
      t.integer :user_id
      t.timestamps
    end
  end
end
