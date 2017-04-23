json.extract! game, :id, :name, :publisher_id, :author_id, :expansion_to_id, :created_at, :updated_at
json.url game_url(game, format: :json)
