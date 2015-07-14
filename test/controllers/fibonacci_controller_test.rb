require 'test_helper'

class FibonacciControllerTest < ActionController::TestCase

  test "DivideControllerTest" do

  params = {'n' => 2}
  json_headers = {"Content-Type" => "application/json",
                  "Accept" => "application/json"}

  uri = URI.parse('http://localhost:3000/fibonacci')
  http = Net::HTTP.new(uri.host, uri.port)

  response = http.post(uri.path, params.to_json, json_headers)
  data = JSON.parse(response.body)
p data["res"]
  if data["res"] == 1
    assert true
  else
    assert false
end
end
end
