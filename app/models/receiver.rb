class Receiver < ApplicationRecord
  belongs_to :address
  has_many :shipments
end
