class RidesController < ApplicationController
	before_action :authenticate_user!

	def index
		patient_id = params[:patient_id]
		@patient = Patient.find_by(id: patient_id)
		@rides = @patient.rides
		render 'index.html.erb'
	end

	def new
		@patient_id = params[:patient_id]
		render 'new.html.erb'
	end

	def create
		patient_id = params[:patient_id]
		Ride.create(
			hospital_section: params[:hospital_section],
			pickup_time: params[:pickup_time], 
			arrival_time: params[:arrival_time], 
			patient_id: patient_id, 
			hospital_id: 1
		)
		redirect_to "/patients/#{patient_id}/rides"
	end
end
