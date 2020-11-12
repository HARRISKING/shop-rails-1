class SessionsController < ApplicationController
  def create
    session = Session.new create_params
    session.validate
    render_response session
  end

  def create_params
    params.permit(:email, :password)
  end
end
