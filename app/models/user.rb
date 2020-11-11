class User < ApplicationRecord
  has_secure_password
end

# user = User.new
# user.email = '1@qq.com'
# user.password = '123'
# user.password_confirm = '123'
# user.save
def create
  user = User.new

end