class CreateTerms < ActiveRecord::Migration[5.0]
  def change
    create_table :terms do |t|
      t.integer :person_id
      t.integer :office_id
      t.date :start_date
      t.date :thru_date

      t.timestamps
    end
  end
end
