class CreateGraphs < ActiveRecord::Migration[6.1]
  def change
    create_table :graphs do |t|
      t.date :date
      t.float :weight
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
    add_index :graphs, [:user_id, :date], unique: true
  end
end
