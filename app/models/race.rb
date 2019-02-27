class Race < ApplicationRecord
  has_many :units
  belongs_to :game
end
