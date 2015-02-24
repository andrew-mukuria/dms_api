json.array!(@dioceses) do |diocese|
  json.extract! diocese, :id
  json.url diocese_url(diocese, format: :json)
end
