class AddPicture1ToDogs < ActiveRecord::Migration[6.1]
  def change
    add_column :dogs, :picture1, :text
  end
end
