require 'elasticsearch/model'

class Event < ActiveRecord::Base
	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "150x150>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

  validates :category, :location, :country, :venue, :name, :theme, presence: true

  belongs_to :user
  
  #relationship for industry name and event
  belongs_to :industry

  #adding elsatic search models
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks

  #searchable do
    #text :category, :location, :country, :venue, :name, :theme
  #end

  #custom search
  def self.search
    where("email like ?", "%#{query}")
  end


  def Event.find_categories(string)
  	return found_event = Event.find_by_category(string)
  end

  def Event.find_countries(string)
    return found_event = Event.find_by_country(string)
  end


end
Article.import # for auto sync model with elastic search
#case insensitivity


# rails g migration add_industry_to_event industry:references
