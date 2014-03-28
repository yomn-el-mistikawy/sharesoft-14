json.array!(@join_public_groups) do |join_public_group|
  json.extract! join_public_group, :id, :user_name, :group_name
  json.url join_public_group_url(join_public_group, format: :json)
end
