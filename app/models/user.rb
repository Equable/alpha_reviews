class User < ApplicationRecord
  mount_uploader :avatar, AvatarUploader

  has_many :reviews

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def username
    return self.email.split('@')[0]
  end
end
