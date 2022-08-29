class Category < ApplicationRecord
    belongs_to :discipline
    has_many :players
    has_many :teams
    has_many :competitions, through: :teams

end
