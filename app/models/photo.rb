class Photo < ApplicationRecord
  belongs_to :place
  mount_uploader :photo, PictureUploader
  belongs_to :user 
end