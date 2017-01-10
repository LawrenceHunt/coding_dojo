require 'spec_helper'

describe TipCalc do
	subject(:tip_calc) {described_class.new()}

	describe "#bill_prompt" do
		it 'prompts the user to input the bill' do
			expect(tip_calc.bill_prompt).to eq("What is the bill?")
		end
	end

	describe "#collect_input" do
		it 'collect user input' do
			allow(tip_calc).to receive(:gets) { "200\n" }
			expect(tip_calc.bill_total).to eq "200"
		end
	end

end
