#parses the given string to operator and operand
class Input_parser

  def initialize input_string

    @calculator = Calculator.new(0)
    @operator = input_string.split(' ')[0]
    @operand = input_string.split(' ')[1].to_i

  end


  def result
    case @operator
      when "add"
        @calculator + @operand
      when "subtract"
        @calculator - @operand
      when "multiply"
        @calculator * @operand
      when "divide"
        @calculator / @operand
      when "cancel"
        @calculator.cancel
      when "exit"
        @calculator.exit
    end
  end


end