json.extract! user, :id, :email, :query, :created_at, :updated_at
json.url user_url(user, format: :json)
