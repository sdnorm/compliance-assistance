class Question < ApplicationRecord

  has_many :answers
  has_many :form_questions
  has_many :forms, through: :form_questions

end
