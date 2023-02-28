json.extract! mylibrary, :id, :author, :name, :category, :price, :isbn, :edition, :created_at, :updated_at
json.url mylibrary_url(mylibrary, format: :json)
