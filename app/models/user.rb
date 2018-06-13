class User < ApplicationRecord
  before_validation :default_role
  has_one :wishlist, dependent: :destroy
  belongs_to :role
  has_one :profile, dependent: :destroy
  has_many :projects, dependent: :destroy
  accepts_nested_attributes_for :projects
  has_many :credit_cards, dependent: :destroy
  accepts_nested_attributes_for :profile
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, omniauth_providers: %i[google_oauth2]

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