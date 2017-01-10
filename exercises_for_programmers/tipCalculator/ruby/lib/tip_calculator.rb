class TipCalc

  attr_reader :bill_total

  def initialize
    @bill_total = 0
  end

	def bill_prompt
		p "What is the bill?"
	end

  def collect_input
    gets.chomp
  end

end
