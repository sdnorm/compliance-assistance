class AddNameToAnswer < ActiveRecord::Migration[6.1]
  def change
    add_column :answers, :name, :string
  end
end
