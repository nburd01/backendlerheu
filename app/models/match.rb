class Match < ApplicationRecord
  belongs_to :categorie
  belongs_to :venue
  belongs_to :calendar
  belongs_to :opponent
end
