class Event < ActiveRecord::Base
	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "150x150>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/


  belongs_to :user
  
  #relationship for industry name and event
   belongs_to :industry

  searchable do
    text :category, :location, :country, :venue, :name, :theme
  end

  def Event.find_categories(string)
  	return found_event = Event.find_by_category(string)
  end

  def Event.find_countries(string)
    return found_event = Event.find_by_country(string)
  end


end
#case insensitivity


# rails g migration add_industry_to_event industry:references