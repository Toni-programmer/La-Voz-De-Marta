json.extract! patient_note, :id, :patient_id, :content, :session_date, :created_at, :updated_at
json.url patient_note_url(patient_note, format: :json)
