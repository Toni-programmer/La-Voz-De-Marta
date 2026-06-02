json.extract! appointment, :id, :patient_id, :therapist_id, :service_id, :scheduled_at, :status, :notes, :created_at, :updated_at
json.url appointment_url(appointment, format: :json)
