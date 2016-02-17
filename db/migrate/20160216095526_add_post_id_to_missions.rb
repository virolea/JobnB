class AddPostIdToMissions < ActiveRecord::Migration
  def change
    add_reference :missions, :post, index: true, foreign_key: true
  end
end
