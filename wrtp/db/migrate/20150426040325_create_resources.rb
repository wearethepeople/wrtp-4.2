class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
      t.string :name
      t.string :description
      t.string :url
      t.boolean :published

      t.timestamps null: false
    end

    add_index :resources, :published
  end
end
