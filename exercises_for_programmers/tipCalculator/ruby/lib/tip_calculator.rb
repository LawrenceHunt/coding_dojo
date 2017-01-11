class TipCalc

  attr_reader :bill_total, :tip_rate, :final_total, :tip_total

  def initialize
    @bill_total = 0
    @tip_rate = 0
    @final_total = 0
    @tip_total = 0
  end

	def bill_prompt
		puts "What is the bill?"
    @bill_total = collect_input
	end

  def collect_input
    gets.chomp
  end

end
