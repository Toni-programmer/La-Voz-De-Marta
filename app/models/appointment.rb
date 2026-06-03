class Appointment < ApplicationRecord
  belongs_to :patient
  belongs_to :therapist
  belongs_to :service
end
