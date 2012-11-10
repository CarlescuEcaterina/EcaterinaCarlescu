class User < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name
  before_save {|user| user.email = email.downcase}
  has_one :CV, :foreign_key=>'user_id'

  validates :first_name, :presence => true, length: { maximum: 25}
  validates :last_name, :presence => true, length: {maximum: 25}
  Valid_email = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true,
			format: {with: Valid_email },.
			uniqueness: {case_sensitive: false}
  validates :password, presence: true, length: {minimum: 8}
  validates :password_confirmation, presence: true
end
