class FirstController < ApplicationController
  def hello
    render plain: 'hello world'
  end
end