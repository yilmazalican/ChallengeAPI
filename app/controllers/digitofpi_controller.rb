class DigitofpiController < ApplicationController

  def digitpi
    @result = Digitofpimodel.new(params["n"])
    render json: @result

  end
end
