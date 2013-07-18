json.array!(@apps) do |app|
  json.extract! app 
  json.url job_app_url(@job, app, format: :json)
end
