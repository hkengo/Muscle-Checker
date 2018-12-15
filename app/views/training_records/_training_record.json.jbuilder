json.extract! training_record, :id, :title, :video, :created_at, :updated_at
json.url training_record_url(training_record, format: :json)
