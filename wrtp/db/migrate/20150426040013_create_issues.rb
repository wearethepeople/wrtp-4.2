class CreateIssues < ActiveRecord::Migration
  def change
    create_table :issues do |t|
      t.string :name
      t.text :summary
      t.string :score
      t.string :integer

      t.timestamps null: false
    end

    add_index :issues, :score
  end
end
