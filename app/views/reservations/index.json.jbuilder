json.array!(@reservations) do |reservation|
  json.extract! reservation, :starts_at, :ends_at, :person_count, :email, :name, :phone, :special_wishes, :added_by, :updated_by, :canceled_by, :canceled_at
  # json.url restaurant_reservation_url(restaurant, reservation, format: :json)
end
