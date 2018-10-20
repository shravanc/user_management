class CreateUmsRewards < ActiveRecord::Migration[5.2]
  def change
    create_table :ums_rewards do |t|
      t.string :title
      t.string :action
      t.integer :points
      t.integer :user_id      

      t.timestamps
    end
  end
end
