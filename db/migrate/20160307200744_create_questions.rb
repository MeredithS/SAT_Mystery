class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :picture
      t.string :text
      t.string :answer
      t.string :hint
      t.string :category
      t.references :clue
    end
  end
end
