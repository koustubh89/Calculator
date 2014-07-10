require 'rspec'

describe 'Input_parser' do

  it 'parse the string "add 5" must result as existing value + 5' do
    input_parser = Input_parser.new("add 5")
    expect(input_parser.result).to eq(5)
  end

  it 'parse the string "subtract  10" must result as existing value - 10' do
    input_parser = Input_parser.new("subtract  10")
    expect(input_parser.result).to eq(-10)
  end

  it 'parse the string "multiply 5" must result as existing value * 5' do
    input_parser = Input_parser.new("multiply 5")
    expect(input_parser.result).to eq(0)
  end

  it 'parse the string "divide 10" must result as existing value / 10' do
    input_parser = Input_parser.new("divide 10")
    expect(input_parser.result).to eq(0)
  end

  it 'parse the string "cancel" to reset the existing state to 0' do
    input_parser = Input_parser.new("cancel")
    expect(input_parser.result).to eq(0)
  end

  it 'parse the string "exit" and exits' do
    input_parser = Input_parser.new("exit")
    Process.should_receive(:exit)
    input_parser.result
  end


end