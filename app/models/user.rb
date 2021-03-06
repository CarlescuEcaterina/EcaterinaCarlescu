class User < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name, :password, :password_confirmation
  has_secure_password
  before_save {|user| user.email = email.downcase}
  before_save :create_token

  has_one :CV, :foreign_key=>"user_id"

  validates :first_name, :presence => true, length: { maximum: 25}
  validates :last_name, :presence => true, length: {maximum: 25}
  Valid_email = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true,
			format: {with: Valid_email },
			uniqueness: {case_sensitive: false}
  validates :password, presence: true, length: {minimum: 8}
  validates :password_confirmation, presence: true
  before_save {|user| user.email = email.downcase}
  before_save :create_token 

private
  def create_token
     self.token = SecureRandom.urlsafe_base64
  end

public
  def show_name
  self.where(:first_name => @user.first_name).select(:last_name)  
  end

end
