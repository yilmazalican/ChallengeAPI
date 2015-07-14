require 'test_helper'


#Assertion for if the model does its job correct with the rails' model.
#Please do not forget to run the WEBBRICK server from http://localhost:3000/allsum
class AllsumControllerTest < ActionController::TestCase
   test "the truth" do
     params = {'n' => 3}
     json_headers = {"Content-Type" => "application/json",
                     "Accept" => "application/json"}

     uri = URI.parse('http://localhost:3000/allsum')
     http = Net::HTTP.new(uri.host, uri.port)

     response = http.post(uri.path, params.to_json, json_headers)
     data = JSON.parse(response.body)

     if data["res"] == 6
       assert true
     else
       assert false
  end
   end
end
