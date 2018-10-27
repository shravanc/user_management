class CreateUmsRolePrivileges < ActiveRecord::Migration[5.2]
  def change
    create_table :ums_role_privileges do |t|
      t.integer :role_id
      t.integer :privilege_id

      t.timestamps
    end
  end
end
