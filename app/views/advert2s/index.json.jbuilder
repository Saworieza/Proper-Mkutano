json.array!(@advert2s) do |advert2|
  json.extract! advert2, :id, :image, :link
  json.url advert2_url(advert2, format: :json)
end
