class AddAgencyInterestNumberToLocation < ActiveRecord::Migration[6.1]
  def change
    add_column :locations, :agency_interest_number, :string
  end
end
