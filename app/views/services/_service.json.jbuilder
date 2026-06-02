json.extract! service, :id, :name, :description, :modality, :price, :duration_minutes, :created_at, :updated_at
json.url service_url(service, format: :json)
