class ApitestController < ApplicationController
# GET /apitest
  def index
    json_response(value: 'This is WeSage API, I am good.')
  end
end
