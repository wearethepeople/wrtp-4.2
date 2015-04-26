json.array!(@issues) do |issue|
  json.extract! issue, :id, :name, :summary, :score
  json.url issue_url(issue, format: :json)
end
