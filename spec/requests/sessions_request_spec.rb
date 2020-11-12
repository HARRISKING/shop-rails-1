require 'rails_helper'

RSpec.describe "Sessions", type: :request do
  it 'find the user info' do
    post '/users', params: {email: '234@qq.com', password: '123456', password_confirmation: '123456'}
    post '/sessions', params: {email: '234@qq.com', password: '123456'}
    p session
  end
end
