class Appointment < ApplicationRecord
  enum status: [:uncontacted, :contacted]
  
end
