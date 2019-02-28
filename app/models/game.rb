class Game < ApplicationRecord
  has_many :races, dependent: :destroy
end
