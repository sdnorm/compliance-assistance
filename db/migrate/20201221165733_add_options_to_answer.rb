class AddOptionsToAnswer < ActiveRecord::Migration[6.1]
  def change
    add_column :answers, :options, :text
  end
end
