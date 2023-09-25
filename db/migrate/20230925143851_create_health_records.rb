class CreateHealthRecords < ActiveRecord::Migration[7.0]
  def change
    create_table :health_records do |t|
      t.references :user, null: false, foreign_key: true
      t.date :date

      t.timestamps
    end
  end
end
