class CreateForms < ActiveRecord::Migration[6.1]
  def change
    create_table :forms do |t|
      t.references :location, null: false, foreign_key: true

      t.timestamps
    end
  end
end
