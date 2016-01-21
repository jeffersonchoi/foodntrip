json.array!(@places) do |place|
  json.extract! place, :id, :name, :website, :lat, :long, :description, :ratings, :city, :country, :fnt_ratings, :start_time, :end_time
  json.url place_url(place, format: :json)
end
