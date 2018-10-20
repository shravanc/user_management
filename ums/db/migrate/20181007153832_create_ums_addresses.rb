class CreateUmsAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :ums_addresses do |t|
      t.string :title
      t.string :description
      t.string :state
      t.string :city
      t.string :country

      t.timestamps
    end
  end
end
