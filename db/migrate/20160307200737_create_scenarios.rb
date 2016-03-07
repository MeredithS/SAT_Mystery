class CreateScenarios < ActiveRecord::Migration
  def change
    create_table :scenarios do |t|
      t.string :floor_plan_url
      t.string :text_intro
    end
  end
end
