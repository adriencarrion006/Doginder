class CreateMatches < ActiveRecord::Migration[6.1]
  def change
    create_table :matches do |t|
      t.references :user, null: false, foreign_key: true
      t.references :dog, null: false, foreign_key: true
      t.boolean :match

      t.timestamps
    end
  end
end
