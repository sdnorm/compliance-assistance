class AddAnswerAndNameToQuestion < ActiveRecord::Migration[6.1]
  def change
    add_column :questions, :answer, :string
    add_column :questions, :name, :string
  end
end
