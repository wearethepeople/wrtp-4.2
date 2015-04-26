class CreateBeliefs < ActiveRecord::Migration
  def change
    create_table :beliefs do |t|
      t.string :title
      t.text :summary
      t.text :explanation
      t.integer :score

      t.timestamps null: false
    end

    add_index :beliefs, :score
  end
end
