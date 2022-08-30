class Opponent < ApplicationRecord
    has_many :competitions, through: :matches

end
