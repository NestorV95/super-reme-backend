class User < ApplicationRecord
    has_secure_password
    has_many :orders
    # validates :username, uniqueness:true
end
