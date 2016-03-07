class RemoveRightCoordinateFromQuestions < ActiveRecord::Migration
  def change
    remove_column :questions, :right_coordinate, :integer
  end
end
