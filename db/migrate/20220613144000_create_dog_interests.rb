class CreateDogInterests < ActiveRecord::Migration[6.1]
  def change
    create_table :dog_interests do |t|
      t.references :dog, null: false, foreign_key: true
      t.references :interest, null: false, foreign_key: true

      t.timestamps
    end
  end
end
