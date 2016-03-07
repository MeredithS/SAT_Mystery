class AddClueToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :left_coordinate, :integer
    add_column :questions, :right_coordinate, :integer
    add_reference :questions, :scenario, index: true, foreign_key: true
  end
end
