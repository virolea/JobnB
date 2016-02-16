class User < ActiveRecord::Base
  has_many :posts

  validates :user_id, presence: true

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, omniauth_providers: [:facebook]

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
