class NextprimeController < ApplicationController
def findnextprime

@result = Nextprimemodel.new(params["n"])
render json: @result


end

end
