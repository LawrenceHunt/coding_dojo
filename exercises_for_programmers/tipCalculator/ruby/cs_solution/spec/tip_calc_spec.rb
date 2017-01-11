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

	describe "#just_the_tip_plz" do
		before(:example) do

			# allow(tip_calc).to receive(:bill_total) { "200" }
			# allow(tip_calc).to receive(:tip_rate) { "15" }
		end

		it 'calculates the tip' do
			tip_calc = double("Anything", :bill_total => "200", :tip_rate => "15")
			tip_calc.just_the_tip_plz
			expect(tip_calc.tip_total).to eq(30)
		end
	end

end
