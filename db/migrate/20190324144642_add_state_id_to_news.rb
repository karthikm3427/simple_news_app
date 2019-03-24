class AddStateIdToNews < ActiveRecord::Migration
  def change
    add_column :news, :state_id, :integer
  end
end
