json.array!(@archdioceses) do |archdiocese|
  json.extract! archdiocese, :id
  json.url archdiocese_url(archdiocese, format: :json)
end
