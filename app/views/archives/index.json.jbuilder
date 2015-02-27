json.array!(@archives) do |archive|
  json.extract! archive, :id, :image, :publication_date
  json.url archive_url(archive, format: :json)
end
