#performs calculation on two number
class Calculator

  def initialize stored_value
   @stored_value = stored_value.to_f
  end

  def + value
    @stored_value + value
  end

  def - value
    @stored_value - value
  end

  def * value
    @stored_value * value
  end

  def / value
    begin
      if value!=0
        ( @stored_value / value ).round(7)
      end
    rescue
      puts 'Cannot Divide by zero'
    end

  end

  def cancel
    @stored_value = 0
  end

  def exit
    Process.exit
  end

end