class AddPicture3ToDogs < ActiveRecord::Migration[6.1]
  def change
    add_column :dogs, :picture3, :text
  end
end
