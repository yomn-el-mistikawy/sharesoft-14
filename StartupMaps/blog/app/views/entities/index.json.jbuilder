json.array!(@entities) do |entity|
  json.extract! entity, :id, :name, :email, :password, :availability, :verification_code
  json.url entity_url(entity, format: :json)
end
