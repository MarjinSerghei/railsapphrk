class User < ActiveRecord::Base
devise :database_authenticatable, :registerable,  
       :recoverable, :rememberable, :trackable, :validatable,
       :omniauthable, :omniauth_providers => [:facebook]
      has_many :posts 
      has_many :comments
      has_many :ratings
      has_many :posts, through: :ratings, as: :rated_posts
    def recent_posts  
      posts.order(id: :desc).limit(10)
    end   
		def self.from_omniauth(auth)  
  		where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
    	user.email = auth.info.email
	    user.password = Devise.friendly_token[0,20]
	    user.name = auth.info.name
  	end
	end
end