class UsersController < ApplicationController
  def create
    user = User.new
    user.email = params[:email]
    user.password = params[:password]
    user.password_confirmation = params[:password_confirmation]
    user.save
    p '报错信息》》》》》》》'
    p user.errors
  end
end
