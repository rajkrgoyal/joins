class Follow < ApplicationRecord
  belongs_to :follower, foreign_key: "follower_id", class_name: "User"
  belongs_to :followee, foreign_key: "followee_id", class_name: "User"

  validates_uniqueness_of :follower_id, scope: %i[followee_id]

  validate :not_following_self

  def not_following_self
    errors.add :follower_id if followee_id == follower_id
  end
end
