json.array!(@predictions) do |prediction|
  json.extract! prediction, :id, :user_id
  json.url prediction_url(prediction, format: :json)
end
