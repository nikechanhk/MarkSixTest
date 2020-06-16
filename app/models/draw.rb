class Draw < ApplicationRecord
    has_many :tickets
    validates_numericality_of :status
end
