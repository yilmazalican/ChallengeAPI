class Fibonaccimodel
  def initialize(n)
@res = calcfibo(n)
  end

  def calcfibo(n)
    old = 1
    thenew = 1
    sum = 0

  (n-2).times do
sum = old + thenew
 old = thenew
 thenew = sum
end

return sum
  end

end
