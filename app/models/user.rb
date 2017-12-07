class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :posts, dependent: :destroy

  mount_uploader :avatar, AvatarUploader 

  validates :username, presence: true

  attr_accessor :crop_x, :crop_y, :crop_w, :crop_h

  after_update :crop_avatar

  def crop_avatar
    avatar.recreate_versions! if crop_x.present?
  end
end
