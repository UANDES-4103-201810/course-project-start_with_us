class User < ApplicationRecord
  before_validation :default_role
  has_one :wishlist
  belongs_to :role
  has_one :profile
  has_many :projects
  has_many :credit_cards
  accepts_nested_attributes_for :profile
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, omniauth_providers: %i[google_oauth2]
  before_create :create_token

  def create_token
    exist = true
    hash_value = ""
    while exist != nil
      values = "123455678890abcdefghijklmoprstuvwxyzABCDEFGHIJKLMOPQRSTUVWXYZ.+-_"
      hash_value = (0...100).map { (65 + rand(26)).chr }.join
      exist = User.find_by(token:hash_value)
    end
    self.token = hash_value
  end


  def default_role
    if self.role_id == nil
      self.role_id = 1;

    end
  end

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
      # If you are using confirmable and the provider(s) you use validate emails,
      # uncomment the line below to skip the confirmation emails.
      # user.skip_confirmation!
    end
  end

  def self.new_with_session(params, session)
    super.tap do |user|
      if data = session["devise.google_oauth2_data"]
        user.email = data["email"] if user.email.blank?
        user_info=data[:info]
        name=user_info[:name]
        last_name=user_info[:last_name]
        profile_params={name:name,last_name:last_name,multimedia_content_params:{}}
        user.profile_params=profile_params
      end
    end
  end

end