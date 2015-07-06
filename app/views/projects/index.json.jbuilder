json.array!(@projects) do |project|
  json.extract! project, :id, :title, :thumb_url, :author, :author_url, :difficulty, :length, :how_students_work, :cost_per_student, :user_id, :video_url, :skills, :category
  json.url project_url(project, format: :json)
end
