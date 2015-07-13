class Allsummodel

  def initialize(n)
  @res = sumdef(n)
end
  def sumdef(n)
    a = 0
    for i in 0..n
      a = a + i
    end
    return a
  end
end
