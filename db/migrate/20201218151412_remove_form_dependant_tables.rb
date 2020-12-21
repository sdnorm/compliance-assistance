class RemoveFormDependantTables < ActiveRecord::Migration[6.1]
  def change
    remove_foreign_key :form_questions, :forms
    remove_foreign_key :forms, :locations
  end
end
