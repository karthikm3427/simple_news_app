class AddCountryIdToEditors < ActiveRecord::Migration
  def change
    add_column :editors, :country_id, :integer
  end
end
