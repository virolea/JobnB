class RemoveEmployerFromUsers < ActiveRecord::Migration
  def change
  	remove_column :users, :employer, :string
  end
end
