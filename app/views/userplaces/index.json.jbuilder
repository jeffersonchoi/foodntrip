json.array!(@userplaces) do |userplace|
  json.extract! userplace, :id, :user_id, :place_id, :bookmark, :check_in, :bookmark_date, :checkin_date
  json.url userplace_url(userplace, format: :json)
end
