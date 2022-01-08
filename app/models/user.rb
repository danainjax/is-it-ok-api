class User < ApplicationRecord
    has_secure_password
    has_many :reviews
    has_many :movies, through: :reviews
    # validates :name, uniqueness: true, length: { minimum: 3}
    # validates :email, uniqueness: true
end
