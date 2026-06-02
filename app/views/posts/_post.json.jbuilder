json.extract! post, :id, :title, :excerpt, :content, :published_at, :created_at, :updated_at
json.url post_url(post, format: :json)
