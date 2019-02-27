class Board < ApplicationRecord
  belongs_to :team
  has_many :lists
end
