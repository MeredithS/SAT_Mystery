class CreateClues < ActiveRecord::Migration
  def change
    create_table :clues do |t|
    	t.integer :left_coordinate
    	t.integer :top_coordinate
    	t.references :question
    	t.references :scenario
    end
  end
end
