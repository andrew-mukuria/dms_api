json.array!(@deaneries) do |deanery|
  json.extract! deanery, :id
  json.url deanery_url(deanery, format: :json)
end
