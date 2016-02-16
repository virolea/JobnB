class Mission < ActiveRecord::Base
  belongs_to :buying_user, class_name: 'User'
  belongs_to :selling_user, class_name: 'User'
end
