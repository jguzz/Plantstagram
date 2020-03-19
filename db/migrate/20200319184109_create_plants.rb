class CreatePlants < ActiveRecord::Migration[6.0]
  def change
    create_table :plants do |t|
      t.string :name 
      t.string :plant_pic_url
      t.timestamps
    end
  end
end
