class Appletree
	attr_accessor :age
	attr_reader :height, :count

	def initialize(age, height, count)
		@age = age
		@height = height
		@count = count
	end

	def year_gone_by
		@age += 1
		if @age > 3 and @age <= 10
			@count += 2
			@height *= 1.1
		end
	end

	def pick_apples
		@count = 0
	end
end