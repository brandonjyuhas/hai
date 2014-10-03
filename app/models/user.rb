class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable

  has_many :posts

  has_many :follower_relationships, foreign_key: 'follower_id', class_name: 'Follow'
  has_many :followed_relationships, foreign_key: 'followed_id', class_name: 'Follow'

  has_many :followers, through: :follower_relationships
  has_many :followed_users, through: :followed_relationships
end
