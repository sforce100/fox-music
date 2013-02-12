class CreatePaintings < ActiveRecord::Migration
  def change
    create_table :paintings do |t|
    	t.string :name
    	t.string :remote_image_url
      	t.timestamps
    end
  end
end
