json.extract! song, :id, :artist_id, :no_cancion, :created_at, :updated_at
json.url song_url(song, format: :json)