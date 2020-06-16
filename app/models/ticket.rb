class Ticket < ApplicationRecord
    belongs_to :draw
    validates_presence_of :numbers
end
