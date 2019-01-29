class User < ApplicationRecord
  mount_uploader :avatar, AvatarUploader
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # attr_accessor :email, :password, :remember_me, :avatar, :avatar_cache, :remove_avatar

  def username
    return self.email.split('@')[0]
  end

  # if :avatar
  #   validates_presence_of   :avatar
  #   validates_integrity_of  :avatar
  #   validates_processing_of :avatar
  # end
end
