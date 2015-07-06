json.array!(@materials) do |material|
  json.extract! material, :id, :project_id, :object, :where_to_buy, :amount, :per_student
  json.url material_url(material, format: :json)
end
