json.array!(@deanery_controllers) do |deanery_controller|
  json.extract! deanery_controller, :id
  json.url deanery_controller_url(deanery_controller, format: :json)
end
