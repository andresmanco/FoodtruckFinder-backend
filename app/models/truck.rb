class Truck < ApplicationRecord
has_many :dishes
has_many :reviews
has_secure_password
end
