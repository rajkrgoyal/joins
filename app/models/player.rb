class Player < ApplicationRecord
  has_many :teams, through: :contracts
  has_many :contracts
end
