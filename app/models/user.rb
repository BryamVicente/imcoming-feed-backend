class User < ApplicationRecord
    has_secure_password
    has_many :user_interests
    has_many :interests, through: :user_interests
    has_many :favorites

    validates :name, :username, :email, presence: true

    validates :password, length: { minimum: 3, maximum: 15 }, if: -> { password.present? }
end
