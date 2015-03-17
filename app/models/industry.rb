class Industry < ActiveRecord::Base
	has_many :events, :dependent => :nullify
end
