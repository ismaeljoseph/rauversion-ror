module User::OmniAuthExtension
  extend ActiveSupport::Concern

  included do
    has_many :identities, :class_name => 'OauthCredential', :dependent => :destroy
    devise :omniauthable
  end

  module ClassMethods
    # Find user by omniauth uid for specified provider
    # Or create new identity if user given
    #
    def find_by_identity_for(provider, data, current_user)
      identity = OauthCredential.find_by(provider: provider, uid: data['uid'])
      
      if identity
        logger.info("UPDATE DATA! #{data.to_json}")
        
        identity.update(
        :token => data['credentials']['token'], 
        :secret => data['credentials']['secret']
        #:revoked => false
        )
        return identity.user 
      elsif current_user
        logger.info("USER DATA FOUND! #{data.to_json}")
        #avatar = data["info"]["image"].present? ? data["info"]["image"] : nil
        
        current_user.identities.create!(:provider => provider, 
        :uid => data['uid'], 
        :token => data['credentials']['token'], 
        :secret => data['credentials']['secret']
        )
        return current_user
      else
        nil
      end
      
    end

    # Used by devise for initializing new User, received both params and session.
    # Builds aomniauth identity and fills user fields if omniauth data presents in the session
    #
    def new_with_session(params, session)
      super.tap do |user|
        if data = session['devise.omniauth_data']
          
          user.email = data['email'] if user.email.blank? && data['email'].present?
          user.first_name = data['info']['first_name']
          user.last_name = data['info']['last_name'] #if user.full_name.blank? && data['user_info']['name'].present?
          #avatar = data["image"].present? ? data["image"] : nil
          
          user.skip_confirmation!
          
          user.oauth_credentials.build(
          :provider  => data['provider'],
          :uid       => data['uid'],
          :token     => data['credentials']['token'].present? ? data['credentials']['token'] : "",
          :secret    => data['credentials']['secret'].present? ? data['credentials']['secret'] : ""
          )
        end
      end
    end
  end

  #module InstanceMethods
    def password_required?
      (identities.empty? || !password.blank? || !password_confirmation.blank?) && super
    end

    def valid_password?(password)
      return super if password_stored?
      true
    end

    def password_stored?
      encrypted_password_was.present?
    end
  #end
end