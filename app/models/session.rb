class Session
  include ActiveModel::Model
  attr_accessor :email, :password

  validates_presence_of :email, :password
  validates_length_of :password, minimum: 6, if: :password
  validates_format_of :email, with: /.+@.+/, if: Proc.new { |u| u.email.present? }
  validates_format_of :email, with: /.+@.+/, if: :email
end