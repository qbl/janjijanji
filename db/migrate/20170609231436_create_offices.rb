class CreateOffices < ActiveRecord::Migration[5.0]
  def change
    create_table :offices do |t|
      t.string :name
      t.date :start_date
      t.date :thru_date

      t.timestamps
    end
  end
end
