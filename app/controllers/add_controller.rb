class AddController < ApplicationController

  def addition
    @result = Addmodel.new(params["a"],params["b"])
    render json: @result

  end

end
