FactoryBot.define do
  factory :scheduler do
    status { 1 }
    date { "2021-09-09" }
    start_time { "14:00:00" }
    end_time { "14:00:00" }
    court 
    client
  end
  factory :scheduler2, class: Scheduler do
    status { 1 }
    date { "2024-09-09" }
    start_time { "14:00:00" }
    end_time { "14:00:00" }
    court
    client
  end
end
