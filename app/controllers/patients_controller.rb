class PatientsController < ApplicationController
	def index
		@patients = Patient.all
		render 'index.html.erb'
	end

	def new
		render 'new.html.erb'
	end

	def create
		Patient.create(
			first_name: params[:first_name],
			last_name: params[:last_name],
			address: params[:address],
			hospital_id: 1
		)
		redirect_to "/patients"
	end

	def show
		patient_id = params[:id]
		@patient = Patient.find_by(id: patient_id)
		render 'show.html.erb'
	end

	def edit
		patient_id = params[:id]
		@patient = Patient.find_by(id: patient_id)
		render 'edit.html.erb'
	end

	def update
		patient_id = params[:id]
		@patient = Patient.find_by(id: patient_id)
		@patient.update(
			first_name: params[:first_name],
			last_name: params[:last_name],
			address: params[:address]
		)
		# redirect_to '/patients'
		# redirect_to '/patients/' + @patient.id
		redirect_to "/patients/#{@patient.id}"
	end
end
