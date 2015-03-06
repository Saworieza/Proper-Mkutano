json.array!(@events) do |event|
  json.extract! event, :id, :image, :name, :organizer, :date, :location, :link
  json.url event_url(event, format: :json)
end
