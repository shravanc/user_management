class CreateUmsSessions < ActiveRecord::Migration[5.2]
  def change
    create_table :ums_sessions do |t|
      t.string :session_id
      t.integer :user_id

      t.timestamps
    end
  end
end
