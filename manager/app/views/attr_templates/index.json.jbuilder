json.array!(@attr_templates) do |attr_template|
  json.extract! attr_template, :id
  json.url attr_template_url(attr_template, format: :json)
end
