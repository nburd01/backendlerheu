class Team < ApplicationRecord
  belongs_to :category
  has_many :matches, through: :competition
end
