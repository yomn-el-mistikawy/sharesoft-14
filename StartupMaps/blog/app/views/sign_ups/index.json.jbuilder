json.array!(@sign_ups) do |sign_up|
  json.extract! sign_up, :id, :username, :password, :email
  json.url sign_up_url(sign_up, format: :json)
end
