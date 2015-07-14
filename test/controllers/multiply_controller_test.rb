require 'test_helper'

class MultiplyControllerTest < ActionController::TestCase
   test "Multiplycontrollertest" do
     params = {'a' => 2, 'b' => 3 }
     json_headers = {"Content-Type" => "application/json",
                     "Accept" => "application/json"}

     uri = URI.parse('http://localhost:3000/multiply')
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
