require 'test_helper'
require 'net/http'
class AddControllerTest < ActionController::TestCase

#Assertion for if the model does its job correct with the rails' model.
#Please do not forget to run the WEBBRICK server from http://localhost:3000/add
   test "GettingResponseTrue" do
     uri = URI.parse("http://localhost:3000/add")
     response = Net::HTTP.post_form(uri, {"a" => "1", "b" => "2"})
     data = JSON.parse(response.body)

     if data["res"] == "12"
       assert true
     else
       assert false
end
end
end
