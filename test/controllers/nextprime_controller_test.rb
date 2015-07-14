require 'test_helper'

class NextprimeControllerTest < ActionController::TestCase
   test "NextprimeControllerTest" do

     params = {'n' => 2}
     json_headers = {"Content-Type" => "application/json",
                     "Accept" => "application/json"}

     uri = URI.parse('http://localhost:3000/nextprime')
     http = Net::HTTP.new(uri.host, uri.port)

     response = http.post(uri.path, params.to_json, json_headers)
     data = JSON.parse(response.body)

     if data["result"] == 3
       assert true
     else
       assert false
   end
   end
end
