class User < ApplicationRecord
  # follower_follows "names" the Follow join table for accessing through the follower association
  has_many :follower_follows, foreign_key: :followee_id, class_name: "Follow"

  # source: :follower matches with the belongs_to :follower identification in the Follow model
  has_many :followers, through: :follower_follows, source: :follower

  # followee_follows "names" the Follow join table for accessing through the followee association
  has_many :followee_follows, foreign_key: :follower_id, class_name: "Follow"

  # source: :followee matches with the belongs_to :followee identification in the Follow model
  has_many :followees, through: :followee_follows, source: :followee


  has_many :subordinates, class_name: 'User', foreign_key: 'manager_id'

  belongs_to :manager, class_name: 'User'

  has_many :articles
  has_many :comments
  
end
