json.array!(@terminals) do |terminal|
  json.extract! terminal, :id, :name, :description, :other_attributes
  json.url terminal_url(terminal, format: :json)
end
