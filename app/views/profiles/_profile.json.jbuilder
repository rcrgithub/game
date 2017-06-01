json.extract! profile, :id, :name, :last_name, :bullyp, :user_id, :created_at, :updated_at
json.url profile_url(profile, format: :json)
