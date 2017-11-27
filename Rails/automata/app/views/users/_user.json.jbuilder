json.extract! user, :id, :name, :lastname1, :lastname2, :email, :password_digest, :tipo, :created_at, :updated_at
json.url user_url(user, format: :json)
