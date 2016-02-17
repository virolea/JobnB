class Mission < ActiveRecord::Base
  belongs_to :buying_user, class_name: 'User'
  belongs_to :selling_user, class_name: 'User'
  belongs_to :post

  validates :status, :selling_user_id, :buying_user_id, :post_id, :description, presence: true
end
