class AddSectionToQuestion < ActiveRecord::Migration[6.1]
  def change
    add_column :questions, :section, :bigint
  end
end
