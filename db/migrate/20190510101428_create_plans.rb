class CreatePlans < ActiveRecord::Migration[5.2]
  def change
    create_table :plans do |t|
      t.string :name
      t.boolean :recurrent
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps
    end
  end
end
