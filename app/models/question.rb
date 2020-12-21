class Question < ApplicationRecord

  has_many :answers
  has_many :visit_questions
  has_many :visits, through: :visit_questions

end
