class CreateBeliefs < ActiveRecord::Migration
  def change
    create_table :beliefs do |t|
      t.string :title
      t.text :summary
      t.text :explanation
      t.integer :score
      t.boolean :local,     default: 0
      t.integer :issue_id

      t.timestamps null: false
    end

    add_index :beliefs, :score
    add_index :beliefs, :local
    add_index :beliefs, :issue_id
  end
end
