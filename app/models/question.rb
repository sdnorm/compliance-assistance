class Question < ApplicationRecord

  has_many :answers, dependent: :destroy
  has_many :visit_questions
  has_many :visits, through: :visit_questions

  accepts_nested_attributes_for :answers

end
