json.extract! testimonial, :id, :author_name, :role, :content, :created_at, :updated_at
json.url testimonial_url(testimonial, format: :json)
