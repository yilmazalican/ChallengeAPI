class AllsumController < ApplicationController
  def summe
    @result = Allsummodel.new(params["n"])
    render json: @result

  end
end
