class Truck < ActiveRecord::Base
  attr_accessible :truck_id, :applicant, :facility_type, :cnn, :location_description, :saddress, :block_lot, :block, :lot, :permit, :status, :food_items,
  :x, :y, :latitude, :longitude, :schedule, :noi_sent, :approved, :received, :prior_permit, :expiration_date, :location_string

end
