class Visit < ApplicationRecord

  belongs_to :location
  has_many :visit_questions, dependent: :destroy
  has_many :questions, through: :visit_questions, dependent: :destroy
  
end
