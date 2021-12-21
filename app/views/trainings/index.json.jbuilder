json.array!(@trainings) do |training|
  json.extract! training, :id, :event_id
  json.start training.starts_at
  json.end training.ends_at
end