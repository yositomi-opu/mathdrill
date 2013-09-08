json.array!(@targets) do |target|
  json.extract! target, :grade, :year
  json.url target_url(target, format: :json)
end
