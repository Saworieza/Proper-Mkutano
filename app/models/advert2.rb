class Advert2 < ActiveRecord::Base
	has_attached_file :image, :styles => { :large => "680x90>", :medium => "230x400>", :thumb => "150x150>" }
  	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
