class User < ActiveRecord::Base

validates_uniqueness_of :username
validates_presence_of :name
validates_confirmation_of :password
validates_length_of :password, minimum: 6, message: "must be at least 6 characters long"
end
