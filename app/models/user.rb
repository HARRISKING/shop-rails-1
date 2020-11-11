class User < ApplicationRecord
  has_secure_password

  validates_presence_of :email
  validates_uniqueness_of :email
  validates_presence_of :password_confirmation, on: [:create]

  validates_length_of :password, :password_confirmation, minimum: 6
  validates_format_of :email, with: /.+@.+/, if: Proc.new { |u| u.email.present? }
end