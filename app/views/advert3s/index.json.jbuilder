json.array!(@advert3s) do |advert3|
  json.extract! advert3, :id, :image, :link
  json.url advert3_url(advert3, format: :json)
end
