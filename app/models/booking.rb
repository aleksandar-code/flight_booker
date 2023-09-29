class Booking < ApplicationRecord
  belongs_to :passenger, :optional => true
  accepts_nested_attributes_for :passenger
end
