class Discipline < ApplicationRecord
    has_many :users
    has_many :categories
    has_many :taggables
    has_many :posts, through: :taggables
    has_many :players, through: :categories
end
