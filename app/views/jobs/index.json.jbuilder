json.array!(@jobs) do |job|
  json.extract! job, :title, :description
  json.url job_url(job, format: :json)
end
