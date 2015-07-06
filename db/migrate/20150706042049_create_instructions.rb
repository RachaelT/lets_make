class CreateInstructions < ActiveRecord::Migration
  def change
    create_table :instructions do |t|
      t.references :project, index: true
      t.text :full_txt
      t.string :thumb_url
      t.boolean :has_image
      t.integer :position

      t.timestamps
    end
  end
end
