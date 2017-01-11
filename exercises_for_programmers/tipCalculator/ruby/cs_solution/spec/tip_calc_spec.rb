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

		it 'collects bill_total' do
			allow(tip_calc).to receive(:gets) { "200\n" }
			tip_calc.bill_prompt
			expect(tip_calc.bill_total).to eq "200"
		end
	end

	describe "#tip_prompt" do
		it 'prompts user for tip_rate' do
			allow(tip_calc).to receive(:gets) { "15\n" }
			tip_calc.tip_prompt
			expect(tip_calc.tip_rate).to eq "15"
		end
	end

	describe "#just_the_tip" do
		it 'calculates the tip' do
			tip_calc.instance_variable_set(:@bill_total, "200")
			tip_calc.instance_variable_set(:@tip_rate, "15")
			tip_calc.just_the_tip
			expect(tip_calc.tip_total).to eq(30)
		end
	end

	describe "#final_total" do
		it 'calculates the final' do
			tip_calc.instance_variable_set(:@bill_total, "200")
			tip_calc.instance_variable_set(:@tip_total, 30)
			tip_calc.final_total
			expect(tip_calc.final_total).to eq(230)
		end
	end

	describe "#display_tip" do
		it "prints the tip total" do
			tip_calc.instance_variable_set(:@tip_total, 30)
			expect(tip_calc.display_tip).to eq ("Tip: £30")
		end
	end

	describe "#display_total" do
		it "prints the total amount" do
			tip_calc.instance_variable_set(:@final_total, 230)
			expect(tip_calc.display_total).to eq ("Total: £230")
		end
	end
end
