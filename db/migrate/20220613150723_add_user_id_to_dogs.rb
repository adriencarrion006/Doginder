class AddUserIdToDogs < ActiveRecord::Migration[6.1]
  def change
    add_reference :dogs, :user, null: false, foreign_key: true
  end
end
