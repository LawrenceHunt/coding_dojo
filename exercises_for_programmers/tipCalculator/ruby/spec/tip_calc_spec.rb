require 'spec_helper'

describe TipCalc do
	subject(:tip_calc) {described_class.new()}

	describe "#bill_prompt" do
		it 'prompts the user to input the bill' do
			expect(tip_calc.bill_prompt).to eq("What is the bill?")
		end
	end

	describe "#collect_input" do
		before do
			$stdin = StringIO.new("200")
		end

		after do
			$stdin = STDIN
		end

		it 'collect user input' do
			tip_calc.collect_input
			expect(tip_calc.collect_input).to be == "200"
		end
	end

end

