class Answer < ApplicationRecord

  belongs_to :question, optional: true
  # belongs_to :visit
  
end
