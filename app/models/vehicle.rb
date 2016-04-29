class Vehicle < ActiveRecord::Base
  has_one :state_number
  has_one :certificate_of_title

  accepts_nested_attributes_for :state_number, :certificate_of_title
end
