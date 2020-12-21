class Location < ApplicationRecord

  has_many :visits, dependent: :destroy

end
