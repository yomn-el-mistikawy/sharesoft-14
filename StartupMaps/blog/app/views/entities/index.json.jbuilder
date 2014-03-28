json.array!(@entities) do |entity|
  json.extract! entity, :id, :name, :email, :password, :availability
  json.url entity_url(entity, format: :json)
end
