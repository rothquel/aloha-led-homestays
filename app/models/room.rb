class Room < ApplicationRecord
  belongs_to :host
  has_many :stays
end
