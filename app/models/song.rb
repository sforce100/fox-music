class Song < ActiveRecord::Base
  attr_accessible :album, :name, :path, :publish_at
end
