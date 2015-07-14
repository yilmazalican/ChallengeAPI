require 'test_helper'

class SubstractControllerTest < ActionController::TestCase
   test "SubstractControllerTest" do
     params = {'a' => 2, 'b' => 1}
     json_headers = {"Content-Type" => "application/json",
                     "Accept" => "application/json"}

     uri = URI.parse('http://localhost:3000/substract')
     http = Net::HTTP.new(uri.host, uri.port)

     response = http.post(uri.path, params.to_json, json_headers)
     data = JSON.parse(response.body)

     if data["res"] == 1
       assert true
     else
       assert false
     end
   end
end
