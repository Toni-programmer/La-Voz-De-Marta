class Patient < ApplicationRecord
  has_many :appointments
  has_many :patient_notes
end
