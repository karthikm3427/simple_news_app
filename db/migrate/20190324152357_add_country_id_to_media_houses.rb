class AddCountryIdToMediaHouses < ActiveRecord::Migration
  def change
    add_column :media_houses, :country_id, :integer
  end
end
