class Website < ActiveRecord::Base
	validates :homepage, :url => true
end
