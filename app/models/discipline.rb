class Discipline < ApplicationRecord
    has_many :users
    has_many :categories
end
