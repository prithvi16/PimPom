class CreateAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :answers do |t|
      t.string :qid
      t.integer :qno
      t.integer :answer

      t.timestamps
    end
  end
end
