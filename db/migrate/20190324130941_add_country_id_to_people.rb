class AddCountryIdToPeople < ActiveRecord::Migration
  def change
    add_column :people, :country_id, :integer
  end
end
