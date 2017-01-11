require 'spec_helper'

describe TipCalc do
	subject(:tip_calc) {described_class.new()}

	describe "#initialize" do
		it "should initialize bill_total at zero " do
			expect(tip_calc.bill_total).to eq(0)
		end

		it "should initialize tip_total at zero " do
			expect(tip_calc.tip_total).to eq(0)
		end

		it "should initialize tip_rate at zero " do
			expect(tip_calc.tip_rate).to eq(0)
		end

		it "should initialize final_total at zero " do
			expect(tip_calc.final_total).to eq(0)
		end
	end

	describe "#bill_prompt" do
		it 'prompts the user to input the bill' do
			#STDOUT.should_receive(:puts).with("What is the bill?")
			allow(tip_calc.bill_prompt).to receive(:collect_input) { "200\n" }
			expect(STDOUT).to receive(:puts) {"What is the bill?"}
			tip_calc.bill_prompt
		end
	end

	describe "#collect_input" do
		it 'collect user input' do
			allow(tip_calc.collect_input).to receive(:gets) { "200\n" }
			#tip_calc.bill_prompt
			expect(tip_calc.bill_total).to eq "200"
		end
	end

end
