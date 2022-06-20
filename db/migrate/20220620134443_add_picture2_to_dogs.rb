class AddPicture2ToDogs < ActiveRecord::Migration[6.1]
  def change
    add_column :dogs, :picture2, :text
  end
end
