json.extract! person, :id, :name, :description, :birthdate, :created_at, :updated_at
json.url person_url(person, format: :json)
