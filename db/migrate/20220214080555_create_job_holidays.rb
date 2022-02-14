class CreateJobHolidays < ActiveRecord::Migration[6.0]
  def change
    create_table :job_holidays do |t|
      t.references :job,     null: false, foreign_key: true
      t.references :holiday, null: false, foreign_key: true
      t.timestamps
    end
  end
end
