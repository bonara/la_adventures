class Adventure < ActiveRecord::Base
  geocoded_by :address   
  after_validation :geocode          # this command auto fetches our coordinates
  mount_uploader :picture, PictureUploader
  has_many :comments
end