require 'test_helper'

class DigitofpiControllerTest < ActionController::TestCase

  #Assertion for if the model does its job correct with the rails' model.
  #Please do not forget to run the WEBBRICK server from http://localhost:3000/digitofpi
   test "DigitofPiTest" do


     params = {'n' => 1}
     json_headers = {"Content-Type" => "application/json",
                     "Accept" => "application/json"}

     uri = URI.parse('http://localhost:3000/digitofpi')
     http = Net::HTTP.new(uri.host, uri.port)

     response = http.post(uri.path, params.to_json, json_headers)
     data = JSON.parse(response.body)
p data["res"]
     if data["res"] == 1.to_s
       assert true
     else
       assert false
  end

  end
end
