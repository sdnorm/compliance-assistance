class Location < ApplicationRecord

  has_many :visits, dependent: :destroy

  def full_address
    if self.address2.nil?
      "#{self.address1} #{self.city}, #{self.state}"
    else
      "#{self.address1} #{self.address2} #{self.city}, #{self.state}"
    end
  end

end
