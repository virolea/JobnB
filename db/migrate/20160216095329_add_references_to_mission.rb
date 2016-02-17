class AddReferencesToMission < ActiveRecord::Migration
  def change
    add_column :missions, :selling_user_id, :integer
    add_column :missions, :buying_user_id, :integer
  end
end
