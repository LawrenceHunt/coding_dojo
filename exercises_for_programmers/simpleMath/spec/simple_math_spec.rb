require 'spec_helper'

describe SimpleMath do

	subject(:simple_math) {described_class.new()}


	describe '#initialize' do
		it 'should initialize with first number zero' do
			expect(simple_math.first_num).to eq 0
		end
		it 'should initialize with second number zero' do
			expect(simple_math.sec_num).to eq 0
		end
	end

	describe "#num_prompt" do

		it 'prompts first_num' do
			allow(simple_math).to receive(:gets) { "10" }
			simple_math.num_prompt
			expect(simple_math.first_num).to eq "10"
		end

		it 'prompts sec_num' do
			allow(simple_math).to receive(:gets) { "15" }
			simple_math.num_prompt
			expect(simple_math.sec_num).to eq "15"
		end
	end
end