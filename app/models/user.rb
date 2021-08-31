class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :tweeets
  has_one_attached :avatar
  # belongs to or has many
  belongs_to :followers
  has_many :following
end
