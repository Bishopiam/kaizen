class PatientsController < ApplicationController
	def index
		@patients = Patient.all
		render 'index.html.erb'
	end
end
