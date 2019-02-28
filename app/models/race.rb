class Race < ApplicationRecord
  has_many :units, dependent: :destroy
  belongs_to :game
end
