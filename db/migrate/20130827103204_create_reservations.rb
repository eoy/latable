class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.datetime :starts_at
      t.datetime :ends_at
      t.integer :person_count
      t.string :email
      t.string :name
      t.string :phone
      t.text :special_wishes
      t.integer :added_by
      t.integer :updated_by
      t.integer :canceled_by
      t.datetime :canceled_at

      t.timestamps
    end
  end
end
