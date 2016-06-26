class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.string :email
      t.boolean :human, default: true

      t.timestamps null: false
    end
  end
end
