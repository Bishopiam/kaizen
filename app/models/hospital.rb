class Hospital < ActiveRecord::Base
	has_many :users
	has_many :patients
	has_many :rides 
end
