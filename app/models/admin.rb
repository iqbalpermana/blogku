class Admin < ActiveRecord::Base
  before_save {self.email = email.downcase}
  validates :name,presence: true, length:{maximum:50}
  VAlID_EMAIL_REGEX =  /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: {with: VAlID_EMAIL_REGEX}, uniqueness: {case_sensitive: false}
  has_secure_password
  validates :password, length: {minimum: 6}
end
