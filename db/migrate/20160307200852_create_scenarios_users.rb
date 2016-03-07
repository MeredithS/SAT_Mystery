class CreateScenariosUsers < ActiveRecord::Migration
  def change
     create_join_table :scenarios, :users do |t|
      t.index [:scenario_id, :user_id]
      t.index [:user_id, :scenario_id]
    end
  end
end
