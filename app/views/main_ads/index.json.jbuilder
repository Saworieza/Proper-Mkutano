json.array!(@main_ads) do |main_ad|
  json.extract! main_ad, :id, :image, :link
  json.url main_ad_url(main_ad, format: :json)
end
