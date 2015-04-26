json.array!(@issues) do |issue|
  json.extract! issue, :id, :name, :summary, :score, :integer
  json.url issue_url(issue, format: :json)
end
