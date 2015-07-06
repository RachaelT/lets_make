class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.string :thumb_url
      t.string :author
      t.string :author_url
      t.string :difficulty
      t.string :length
      t.string :how_students_work
      t.float :cost_per_student
      t.references :user, index: true
      t.string :video_url
      t.string :skills
      t.string :category

      t.timestamps
    end
  end
end
