class DivideController < ApplicationController
  def divideit
    @result = Dividemodel.new(params["a"],params["b"])
    render json: @result

  end

end
