class CreateMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :members do |t|
      t.string :first_name
      t.string :last_name
      t.datetime :date_of_birth
      t.references :plan, foreign_key: true

      t.timestamps
    end
  end
end
