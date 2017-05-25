json.extract! room, :id, :type, :size, :price, :note, :created_at, :updated_at
json.url room_url(room, format: :json)
