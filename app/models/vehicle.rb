class Vehicle < ActiveRecord::Base
  has_one :state_number
  has_one :certificate_of_title
end
