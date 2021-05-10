json.extract! fav_item, :id, :name, :price, :category, :popularity, :created_at, :updated_at
json.url fav_item_url(fav_item, format: :json)
