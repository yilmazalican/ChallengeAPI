require 'test_helper'
require 'net/http'
class AddControllerTest < ActionController::TestCase

#Assertion for if the model does its job correct with the rails' model.
#Please do not forget to run the WEBBRICK server from http://localhost:3000/add
   test "GettingResponseTrue" do
     params = {'a' => 1, 'b' => 2}
     json_headers = {"Content-Type" => "application/json",
                     "Accept" => "application/json"}

     uri = URI.parse('http://localhost:3000/add')
     http = Net::HTTP.new(uri.host, uri.port)

     response = http.post(uri.path, params.to_json, json_headers)
     data = JSON.parse(response.body)

     if data["res"] == 3
       assert true
     else
       assert false
end
end
end
