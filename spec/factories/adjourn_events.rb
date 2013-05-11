# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :adjourn_event, :class => 'Event' do
    name "MyString"
    from_date "2013-05-11"
    to_date "2013-05-11"
    from_time "2013-05-11 11:07:40"
    to_time "2013-05-11 11:07:40"
    full_day false
    description "MyText"
    user nil
  end
end
