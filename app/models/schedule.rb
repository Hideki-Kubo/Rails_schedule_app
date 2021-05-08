class Schedule < ApplicationRecord
    validates :schedule_name, presence: true
    validates :start_date, presence: true
    validates :end_date, presence: true
end
