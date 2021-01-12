class Visit < ApplicationRecord

  belongs_to :location
  has_many :visit_questions, dependent: :destroy
  has_many :questions, through: :visit_questions, dependent: :destroy
  # has_many :answers

  accepts_nested_attributes_for :questions

  def section_1
    set_section_questions("G.W. Monitoring OR Vapor Monitory")
  end

  def section_2
    set_section_questions("Rectifier Reading")
  end

  def section_3
    set_section_questions("Tank Tightness Test")
  end

  def section_4
    set_section_questions("ATG Valid Tests")
  end

  def section_5
    set_section_questions("S.I.R. System")
  end

  def section_6
    set_section_questions("Spill Buckets")
  end

  def section_7
    set_section_questions("Overfill")
  end

  def section_8
    set_section_questions("ATG")
  end

  def section_9
    set_section_questions("Dispensers")
  end

  def section_10
    set_section_questions("STP Sumps")
  end

  def section_11
    set_section_questions("Comments")
  end

  def section_12
    set_section_questions("bottom fields")
  end

  def set_section_questions(section_title)
    if self.questions.nil? || self.questions.where(content: section_title)
      section1_data = Question.includes(:answers).where(content: section_title)
      section1 = []
      section1_data.each do |a|
        section1 << {
          name: a.name
        }
      end
      section1
    else
      section1_data = self.questions.includes(:answers).where(content: section_title)
      section1 = []
      section1_data.each do |a|
        section1 << {
          name: a.name,
          content: a.content
        }
      end
      section1
    end
  end
  
end
