class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
    	t.boolean :hint_used
    	t.boolean :answer_correct
    	t.references :user
    	t.references :question
    end
  end
end
