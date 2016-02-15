class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :description
      t.datetime :date_begin
      t.datetime :date_end
      t.string :employee_name
      t.string :employee_skill

      t.timestamps null: false
    end
  end
end
