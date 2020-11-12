require 'rails_helper'

RSpec.describe 'Users', type: :request do
  it 'create a user' do
    post '/users', params: {email: '234@qq.com', password: '123456', password_confirmation: '123456'}
    p response.status
    expect(response.status).to eq(200)
  end

  it 'can not create a user record because it have not params' do
    post '/users', params: {}
    expect(response.status).to eq(422)
    res = JSON.parse(response.body)
    expect(res['errors'].length).to eq(3)
    expect(res['errors']['password'][0]).to eq("can't be blank")
    expect(res['errors']['email'][0]).to eq("can't be blank")
    expect(res['errors']['password_confirmation'][0]).to eq("can't be blank")
  end
end
