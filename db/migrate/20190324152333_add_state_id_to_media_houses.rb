class AddStateIdToMediaHouses < ActiveRecord::Migration
  def change
    add_column :media_houses, :state_id, :integer
  end
end
