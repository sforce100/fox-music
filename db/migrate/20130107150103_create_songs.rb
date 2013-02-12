class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :album
      t.string :name
      t.string :path
      t.date :publish_at

      t.timestamps
    end
  end
end
