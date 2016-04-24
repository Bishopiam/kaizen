class Patient < ActiveRecord::Base
	belongs_to :hospital
	has_many :rides
end
