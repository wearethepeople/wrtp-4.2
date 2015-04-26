json.array!(@beliefs) do |belief|
  json.extract! belief, :id, :title, :summary, :explanation, :score
  json.url belief_url(belief, format: :json)
end
