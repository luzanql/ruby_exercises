class Calculator
  PI = 3.14

  def sum(n1, n2)
    n1 + n2
  end

  def minus(n1, n2)
    n1 - n2
  end

  def multiply(n1, n2)
    n1 * n2
  end

  def divide(n1, n2)
    if n2 == 0 ? return 'error' : return n1 / n2 end
  end

  def power(n1, n2)
    n1 ** n2
  end


  def radius_circle(radius)
    PI * radius ** 2
  end


end

calculator = Calculator.new
puts calculator.sum(4.5,4.2)
puts calculator.minus(8.2,6.5)
puts calculator.multiply(8,855)
puts calculator.divide(8,2)
puts calculator.divide(3,0)
puts calculator.power(2, 3)
puts calculator.radius_circle(5)

