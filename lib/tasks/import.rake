require 'open-uri'

namespace :import do
  desc "TODO"
  task :import_trucks => :environment do
  	data = open('http://data.sfgov.org/resource/rqzj-sfat.json').read
  	json = JSON.parse(data)
  	json.each do |row|
  		t = Truck.new
  		t.truck_id = row['objectid']
  		t.applicant = row['applicant']
  		t.facility_type = row['facilitytype']
  		t.cnn = row['cnn']
  		t.location_description = row['locationdescription']
  		t.address = row['address']
  		t.block_lot = row['blocklot']
  		t.block = row['block']
  		t.lot = row['lot']
  		t.permit = row['permit']
  		t.status = row['status']
  		t.food_items = row['fooditems']
  		t.x = row['x']
  		t.y = row['y']
  		t.latitude = row['latitude']
  		t.longitude = row['longitude']
      t.schedule = row['schedule']
  		t.approved = row['approved']
  		t.received = row['approved']
  		t.prior_permit = row['priorpermit']
  		t.expiration_date = row['expirationdate']
  		t.save!
  	end

  end

end
