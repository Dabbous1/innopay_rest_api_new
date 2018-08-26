class Address < ApplicationRecord
    has_many :senders 
    has_many :receivers
end
