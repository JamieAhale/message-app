class User < ApplicationRecord
    validates :username, presence: true, uniqueness: true, length: {minimum: 3, maximum: 20}
    has_secure_password
    has_many :messages
end
