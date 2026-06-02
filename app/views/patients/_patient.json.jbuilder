json.extract! patient, :id, :full_name, :birth_date, :phone, :email, :modality, :background, :created_at, :updated_at
json.url patient_url(patient, format: :json)
