json.array!(@apps) do |app|
  json.extract! app, 
  json.url app_url(app, format: :json)
end
