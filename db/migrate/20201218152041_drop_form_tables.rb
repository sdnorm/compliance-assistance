class DropFormTables < ActiveRecord::Migration[6.1]
  def change
    remove_foreign_key :form_questions, :questions
    drop_table :form_questions 
    drop_table :forms
  end
end
