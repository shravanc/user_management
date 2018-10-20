class CreateUmsAlbums < ActiveRecord::Migration[5.2]
  def change
    create_table :ums_albums do |t|
      t.string :title
      t.string :description
      t.integer :medium_id

      t.timestamps
    end
  end
end
