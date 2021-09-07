class User < ApplicationRecord
  acts_as_voter
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :omniauthable, omniauth_providers: [:facebook]

  has_many :completeds, dependent: :destroy
  enum role: [:broker, :asistant, :admin, :pending]
  #enum status_payment: [:pend_pago, :pagado]
  has_one :pay_registration


  def is?( requested_role )
    self.role == requested_role.to_s
  end

  def self.find_for_oauth(auth, signed_in_resource = nil)
    identity = Identity.find_for_oauth(auth)
    user = signed_in_resource ? signed_in_resource : identity.user

    if user.nil?
      email = auth.info.email
      user = User.find_by(email: email) if email

      # Create the user if it's a new registration
      if user.nil?
        password = Devise.friendly_token[0,20]
        if auth.provider == 'facebook'
          user = User.new(
            email: email ? email : "#{auth.uid}@change-me.com",
            password: password,
            password_confirmation: password
          )
        elsif auth.provider == 'twitter'
          user = User.new(
            email: "#{auth.uid}@change-me.com",
            password: password,
            password_confirmation: password
          )
        end
      end
      user.save!
    end

    if identity.user != user
      identity.user = user
      identity.save!
    end
    
    user
  end

  def email_verified?
    if self.email
      if self.email.split('@')[1] == 'change-me.com'
        return false
      else
        return true
      end
    else
      return false
    end
  end
  # def self.find_for_facebook_oauth(auth)
  #   user= User.where(provider: auth.provider, uid: auth.uid).first
  #   return user if user
  #   user = User.where(email: auth.info.email).first
  #   return user if user
  #   User.create(
  #     provider: auth.provider,
  #     uid: auth.uid,
  #     email: auth.info.email,
  #     password: Devise.friendly_token[0,20]
  #   )
  # end
end
