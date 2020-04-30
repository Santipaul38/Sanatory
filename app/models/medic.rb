class Medic < ApplicationRecord
	has_many :turns
	belongs_to :speciallity

	validates :name, presence: true
end
