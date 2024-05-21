json.extract! workout, :id, :name, :hours, :dateWorked, :created_at, :updated_at
json.url workout_url(workout, format: :json)
