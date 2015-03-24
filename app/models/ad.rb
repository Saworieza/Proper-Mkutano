class Ad < ActiveRecord::Base
	has_attached_file :image, :styles => { :large => "682x90", :medium => "237x400", :thumb => "150x150>" }, :default_url => "/images/:style/missing.png"
  	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
