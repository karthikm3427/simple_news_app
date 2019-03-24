class AddStateIdToEditors < ActiveRecord::Migration
  def change
    add_column :editors, :state_id, :integer
  end
end
