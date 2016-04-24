class PatientsController < ApplicationController
	def index
		@patients = Patient.all
		render 'index.html.erb'
	end

	def show
		patient_id = params[:id]
		@patient = Patient.find_by(id: patient_id)
		render 'show.html.erb'
	end
end
