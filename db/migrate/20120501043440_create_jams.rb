class CreateJams < ActiveRecord::Migration
  def change
    create_table :jams do |t|
      t.string :name
      t.string :artist

      t.timestamps
    end
  end
end
