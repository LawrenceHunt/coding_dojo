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
    @bill_total = gets.chomp
	end

  def tip_prompt
		puts "What is the tip?"
    @tip_rate = gets.chomp
	end

  def just_the_tip
    @tip_total = @bill_total.to_i * @tip_rate.to_i / 100
  end

  def final_total
    @final_total = @bill_total.to_i + @tip_total
  end

  def display_tip
    "Tip: £#{@tip_total}"
  end

  def display_total
    "Total: £#{@final_total}"
  end

end
