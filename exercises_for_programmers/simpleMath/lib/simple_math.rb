class SimpleMath

	attr_reader :first_num, :sec_num

	def initialize
		@first_num = 0
		@sec_num = 0
	end

	def num_prompt
		puts "What is the first number?"
		@first_num = gets.chomp
		puts "What is the second number?"
		@sec_num = gets.chomp
	end

end
