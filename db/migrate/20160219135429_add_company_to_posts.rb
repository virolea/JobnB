class AddCompanyToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :company, :string
  end
end
