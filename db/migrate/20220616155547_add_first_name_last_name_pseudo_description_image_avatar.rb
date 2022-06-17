class AddFirstNameLastNamePseudoDescriptionImageAvatar < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :pseudo, :string
    add_column :users, :description, :text
    add_column :users, :image_avatar, :string
  end
end
