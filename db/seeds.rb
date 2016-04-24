# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Hospital.create(
	name: "Mount Sinai",
	address: "1500 S. Fairfield Avenue, Chicago, Il 60608"
)

Hospital.create(
	name: "Rush",
	address: "1653 W. Congress Pkwy , Chicago, IL, 60612"
)

Patient.create(
	first_name: "Michael",
	last_name: "Jones",
	address: "1647 S. Blue Island Avenue, Chicago, Il 60608",
	hospital_id: 1
)
Patient.create(
	first_name: "Janet", 
	last_name: "Jackson", 
	address: "1820 W. 18th Street, Chicago, Il 60608",
	hospital_id: 1
)

Ride.create( 
	hospital_section: "G4",
	pickup_time: DateTime.new(2016, 4, 21, 8), 
	arrival_time: DateTime.new(2016, 4, 23, 9), 
	patient_id: 1, 
	hospital_id: 1
)
Ride.create( 
	hospital_section: "A10", 
	pickup_time: DateTime.new(2016, 4, 21, 12), 
	arrival_time: DateTime.new(2016, 4, 23, 1), 
	patient_id: 2, 
	hospital_id: 1
)

puts "Finished!"