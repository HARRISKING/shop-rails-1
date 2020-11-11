require 'rails_helper'

RSpec.describe User, type: :model do
  context 'params validates' do
    it 'must have email' do
      user = User.create
      expect(user.errors.details[:email][0][:error]).to eq(:blank)
    end

    it 'must have password' do
      user = User.create email: '123@qq.com', password: ''
      expect(user.errors.details[:password_confirmation][0][:error]).to eq(:blank)
    end

    it 'email formating' do
      user = User.create email: '123qq.com', password: '123456', password_confirmation: '123456'
      expect(user.errors.details[:email][0][:error]).to eq(:invalid)
    end

    it 'password`s length is not right' do
      user = User.create email: '123@qq.com', password: '12345', password_confirmation: '12345'
      expect(user.errors.details[:password][0][:error]).to eq(:too_short)
    end
  end
end


