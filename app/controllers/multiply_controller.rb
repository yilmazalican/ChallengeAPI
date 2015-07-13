class MultiplyController < ApplicationController
  def multiplyit
    @result = Multiplymodel.new(params["a"],params["b"])
    render json: @result

  end
end
