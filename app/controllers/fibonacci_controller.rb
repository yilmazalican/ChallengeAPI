class FibonacciController < ApplicationController
def calcfibonacci
  @result = Fibonaccimodel.new(params["n"])
  render json: @result
end
end
