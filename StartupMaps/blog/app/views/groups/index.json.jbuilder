json.array!(@groups) do |group|
  json.extract! group, :id, :group_name, :description
  json.url group_url(group, format: :json)
end
