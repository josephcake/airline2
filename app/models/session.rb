require 'bcrypt'
class Session < ApplicationRecord
  has_secure_password
end
