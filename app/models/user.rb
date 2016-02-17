class User < ActiveRecord::Base

  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, omniauth_providers: [:facebook]


  has_many :purchases, class_name: 'Mission', foreign_key: 'buyer_user_id'
  has_many :sales, class_name: 'Mission', foreign_key: 'seller_user_id'
  has_many :posts

  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  def self.find_for_facebook_oauth(auth)
		where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
		  user.provider = auth.provider
		  user.uid = auth.uid
		  user.email = auth.info.email
		  user.password = Devise.friendly_token[0,20]  # Fake password for validation
		  user.first_name = auth.info.first_name
		  user.last_name = auth.info.last_name
		  user.picture = auth.info.image
		  user.token = auth.credentials.token
		  user.token_expiry = Time.at(auth.credentials.expires_at)
		end
	end
end
