require 'bigdecimal'
require 'bigdecimal/math'
include BigMath


class Digitofpimodel

  def initialize(n)
  @res = (PI(1000).to_s)[n+1]

  end
end
