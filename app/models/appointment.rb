class Appointment < ApplicationRecord
  enum status: [uncontacted: 0, contacted: 1]
  
  attr_accessor :subtitle

end
