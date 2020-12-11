class Form < ApplicationRecord

  belongs_to :location
  has_many :form_questions
  has_many :questions, through: :form_questions
  
end
