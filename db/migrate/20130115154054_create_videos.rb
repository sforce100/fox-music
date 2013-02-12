class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :title
      t.string :description
      t.string :url
      t.string :source_content_type
      t.string :source_file_name
      t.integer :source_file_size
      t.timestamps
    end
  end
end
