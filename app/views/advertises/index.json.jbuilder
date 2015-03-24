json.array!(@advertises) do |advertise|
  json.extract! advertise, :id, :image
  json.url advertise_url(advertise, format: :json)
end
