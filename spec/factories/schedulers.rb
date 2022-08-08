FactoryBot.define do
  factory :scheduler do
    status { 1 }
    date { "2022-09-09" }
    start_time { "14:00:00" }
    end_time { "14:00:00" }
    court
    client
  end
end
