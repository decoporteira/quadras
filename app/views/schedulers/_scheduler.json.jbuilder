json.extract! scheduler, :id, :status, :date, :hour, :client_id, :court_id, :created_at, :updated_at
json.url scheduler_url(scheduler, format: :json)
