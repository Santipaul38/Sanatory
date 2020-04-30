class Turn < ApplicationRecord
	belongs_to :patient
	belongs_to :medic

	validate :calculate_discount
	validate :turn_time

	def calculate_discount
		if medic.speciallity.charge < patient.social_work.discount
			t = 0
		else
			t = medic.speciallity.charge - patient.social_work.discount
		end
		t
	end

	def turn_time
		for t in Turn.all
			if (date < Time.now) 
                errors.add(:date, "You can't select a date from the past")
            	break
            end
			if t.date == date or (t.date.hour == date.hour) and ((t.date.min + 30) > date.min)
					if (t.medic == medic) and (t.patient == patient)
						errors.add(:date, "That doctor and that patient are busy on that date")
					elsif t.medic == medic
						errors.add(:date, "That doctor is busy on that date")
					elsif t.patient == patient
						errors.add(:date, "That patient is busy on that date")
					end
			end
		end

		date
	end

end

