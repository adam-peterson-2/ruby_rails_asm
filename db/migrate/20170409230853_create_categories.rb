class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
        
      t.string :name, null: false
      t.string :description, null: false
      t.boolean :positive, null: true

      t.timestamps null: false
    end
  end
end
