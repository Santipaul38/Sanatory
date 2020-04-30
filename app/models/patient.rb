class Patient < ApplicationRecord
	has_many :turns
	belongs_to :social_work
	
	validates :name, presence: true
	validates :dni, presence: true, numericality: true
end
