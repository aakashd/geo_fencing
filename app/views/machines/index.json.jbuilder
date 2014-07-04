json.array!(@machines) do |machine|
  json.extract! machine, :id, :user_id, :name
  json.url machine_url(machine, format: :json)
end
