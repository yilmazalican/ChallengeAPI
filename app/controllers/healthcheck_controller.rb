class HealthcheckController < ApplicationController

def checkme
  @result = Healthcheckmodel.new()
  render json: @result
end


end
