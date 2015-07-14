require 'test_helper'

class DivideControllerTest < ActionController::TestCase

  test "DivideControllerTest" do

  params = {'a' => 1 , 'b' => 1}
  json_headers = {"Content-Type" => "application/json",
                  "Accept" => "application/json"}

  uri = URI.parse('http://localhost:3000/divide')
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
