class AddScoresToAnswers < ActiveRecord::Migration[5.1]
  def change
    add_column :answers, :scores, :integer , array: true
  end
end
