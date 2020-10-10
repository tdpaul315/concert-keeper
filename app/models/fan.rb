class Fan < ActiveRecord::Base 
    has_many :concerts

    has_secure_password

    validates :username, :email, presence: true
    validates :email, uniqueness: true
end 