class SessionsController < ApplicationController
  def create
    p response.body
    p response.status
    p session

  end

end
