class Painting < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :song_id, :name, :image, :remote_image_url
  belongs_to :song
  mount_uploader :image, ImageUploader
end
