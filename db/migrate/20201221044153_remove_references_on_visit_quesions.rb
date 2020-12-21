class RemoveReferencesOnVisitQuesions < ActiveRecord::Migration[6.1]
  def change
    remove_reference :visit_questions, :visits, index: true, foreign_key: true
    remove_reference :visit_questions, :questions, index: true, foreign_key: true
    add_reference :visit_questions, :visit, index: true, foreign_key: true
    add_reference :visit_questions, :question, index: true, foreign_key: true
  end
end
