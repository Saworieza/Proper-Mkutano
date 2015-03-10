class Event < ActiveRecord::Base
	include Filterable

	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "150x150>" }, :default_url => "/images/:style/missing.png"
  	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

  	filterrific(
  		default_filter_params: { sorted_by: 'created_at_desc' },
  		available_filters: [
    	:sorted_by,
   		:search_query,
  ]
)
# define ActiveRecord scopes for
# :search_query, :sorted_by, :with_country_id, and :with_created_at_gte
end
