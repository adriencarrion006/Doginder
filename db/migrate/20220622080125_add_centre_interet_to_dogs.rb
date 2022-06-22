class AddCentreInteretToDogs < ActiveRecord::Migration[6.1]
  def change
    add_column :dogs, :centre_interet, :string
  end
end
