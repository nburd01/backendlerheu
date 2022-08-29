class Match < ApplicationRecord
  belongs_to :category
  belongs_to :venue
  belongs_to :calendar
  belongs_to :opponent
end
