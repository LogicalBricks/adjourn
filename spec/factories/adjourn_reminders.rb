# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :adjourn_reminder, :class => 'Reminder' do
    minutes_before 1
    event nil
  end
end
