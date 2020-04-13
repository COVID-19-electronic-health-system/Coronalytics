class Observation < ApplicationRecord
    belongs_to :user
    has_many :physicals, dependent: :destroy
end
