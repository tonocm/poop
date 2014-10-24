class User < ActiveRecord::Base

#validates_uniqueness_of :username
#validates_presence_of :name
validates :name, presence: true, length: {maximum: 50}
validates :email, presence: true, length: {maximum: 255}, format: {with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }, uniqueness: {case_sensitive: false}
validates :username, uniqueness: {case_sensitive: false}
#validates_confirmation_of :password
#validates_length_of :password, minimum: 6, message: "must be at least 6 characters long"
has_secure_password
validates :password, length: {minimum: 6}
end
