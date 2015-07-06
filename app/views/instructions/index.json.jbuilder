json.array!(@instructions) do |instruction|
  json.extract! instruction, :id, :project_id, :full_txt, :thumb_url, :has_image, :position
  json.url instruction_url(instruction, format: :json)
end
