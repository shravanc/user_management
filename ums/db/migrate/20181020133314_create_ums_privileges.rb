class CreateUmsPrivileges < ActiveRecord::Migration[5.2]
  def change
    create_table :ums_privileges do |t|
      t.string :title
      t.string :action

      t.timestamps
    end
  end
end
