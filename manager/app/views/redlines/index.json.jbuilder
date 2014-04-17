json.array!(@redlines) do |redline|
  json.extract! redline, :id
  json.url redline_url(redline, format: :json)
end
