class CreateSchedules < ActiveRecord::Migration[6.1]
  def change
    create_table :schedules do |t|
      t.string :schedule_name 
      t.date :start_date
      t.date :end_date
      t.boolean :allday
      t.string :schedule_memo

      t.timestamps
    end
  end
end
