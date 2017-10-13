class CreateFquizzes < ActiveRecord::Migration[5.1]
  def change
    create_table :fquizzes do |t|
      t.string :name
      t.string :qid
      t.integer :scores, array: true, default: []

      t.timestamps
    end
  end
end
