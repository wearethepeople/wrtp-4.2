json.array!(@resources) do |resource|
  json.extract! resource, :id, :name, :description, :url, :published
  json.url resource_url(resource, format: :json)
end
