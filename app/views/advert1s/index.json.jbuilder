json.array!(@advert1s) do |advert1|
  json.extract! advert1, :id, :image, :link
  json.url advert1_url(advert1, format: :json)
end
