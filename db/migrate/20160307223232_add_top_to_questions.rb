class AddTopToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :top_coordinate, :integer
  end
end
