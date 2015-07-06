class CreateMaterials < ActiveRecord::Migration
  def change
    create_table :materials do |t|
      t.references :project, index: true
      t.string :object
      t.string :where_to_buy
      t.float :amount
      t.boolean :per_student

      t.timestamps
    end
  end
end
