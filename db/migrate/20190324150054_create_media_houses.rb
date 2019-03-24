class CreateMediaHouses < ActiveRecord::Migration
  def change
    create_table :media_houses do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
