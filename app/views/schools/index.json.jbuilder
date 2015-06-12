json.array!(@schools) do |school|
  json.extract! school, :id, :name, :website, :contact_name, :city, :state, :description
  json.url school_url(school, format: :json)
end
