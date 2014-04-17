json.array!(@inspections) do |inspection|
  json.extract! inspection, :id, :name
  json.url inspection_url(inspection, format: :json)
end
