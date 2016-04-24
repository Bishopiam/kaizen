class Ride < ActiveRecord::Base
	belongs_to :patient
	belongs_to :hospital 
end
