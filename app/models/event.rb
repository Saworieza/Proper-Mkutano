class Event < ActiveRecord::Base
	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "150x150>" }, :default_url => "/images/:style/missing.png"
  	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

  	acts_as_taggable # Alias for acts_as_taggable_on :tags
  	acts_as_taggable_on :locations, :names
end
