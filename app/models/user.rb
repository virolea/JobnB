class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :purchases, class_name: 'Mission', foreign_key: 'buyer_user_id'
  has_many :sales, class_name: 'Mission', foreign_key: 'seller_user_id'
  has_many :posts
end
