class SubstractController < ApplicationController
  def substraction
    @result = Substractmodel.new(params["a"],params["b"])
    render json: @result
  end
end
