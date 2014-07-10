require 'spec_helper'

describe 'Calculator' do

  context "Core functionality" do

    context 'add' do
      it "add 5 to stored value viz 3 to give 8" do
        calculator = Calculator.new(3)
        expect(calculator + 5).to eq(8)
      end
      it "add 4 to stored value viz 9 to give 13" do
        calculator = Calculator.new(9)
        expect(calculator + 4).to eq(13)
      end
    end

    context 'subtract' do
      it "subtract 5 to stored value viz 3 to give -2" do
        calculator = Calculator.new(3)
        expect(calculator - 5).to eq(-2)
      end
      it "subtract 10 to stored value viz 9 to give 1" do
        calculator = Calculator.new(10)
        expect(calculator - 9).to eq(1)
      end
    end

    context 'product' do
      it "multiplies 5 to stored value viz 3 to give 15" do
        calculator = Calculator.new(3)
        expect(calculator * 5).to eq(15)
      end
      it "subtract 10 to stored value viz 9 to give 90" do
        calculator = Calculator.new(9)
        expect(calculator * 10).to eq(90)
      end
    end

    context 'divide' do
      it "divide stored value from 5 viz 15 to give 3" do
        calculator = Calculator.new(15)
        expect(calculator / 5).to eq(3)
      end
      it "divide stored value from 3 viz 5 to give 1.6666667" do
        calculator = Calculator.new(5)
        expect(calculator / 3).to eq(1.6666667)
      end


      it 'should not raise divide by zero exception' do
        calculator = Calculator.new(1)
        expect {
          calculator / 0
        }.to_not raise_exception
      end

    end
  end

  context 'cancel' do
    it 'should clear the existing stored value by making it zero' do
      calculator = Calculator.new(15)
      expect(calculator.cancel).to eq(0)
    end
  end

  context 'exit' do
    it 'exits successfully' do
      calculator = Calculator.new(0)
      Process.should_receive(:exit)
      calculator.exit
    end
  end

end