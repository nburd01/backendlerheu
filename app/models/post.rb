class Post < ApplicationRecord
    has_many :comments, as: :commentable
    has_many :taggables
    has_many :disciplines, through: :taggables
end
