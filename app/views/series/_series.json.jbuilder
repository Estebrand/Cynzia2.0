json.extract! series, :id, :name, :year, :description, :total_qty, :created_at, :updated_at
json.url series_url(series, format: :json)
