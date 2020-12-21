class CreateVisitQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :visit_questions do |t|
      t.references :questions, null: false, foreign_key: true
      t.references :visits, null: false, foreign_key: true

      t.timestamps
    end
  end
end
