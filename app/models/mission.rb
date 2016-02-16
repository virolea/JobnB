class Mission < ActiveRecord::Base
  belongs_to :buying_user, class_name: 'User'
  belongs_to :selling_user, class_name: 'User'

  validates :status, :selling_user_id, :buying_user_id, :post_id, presence: true
end
