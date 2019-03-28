class User < ApplicationRecord
    validates_presence_of :email
    has_many :purchases
end
