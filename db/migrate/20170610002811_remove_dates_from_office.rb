class RemoveDatesFromOffice < ActiveRecord::Migration[5.0]
  def change
    remove_column :offices, :start_date
    remove_column :offices, :thru_date
  end
end
