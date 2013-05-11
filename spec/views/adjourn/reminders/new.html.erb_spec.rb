require 'spec_helper'

describe "reminders/new" do
  before(:each) do
    assign(:reminder, stub_model(Reminder,
      :minutes_before => 1,
      :event => nil
    ).as_new_record)
  end

  it "renders new reminder form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", reminders_path, "post" do
      assert_select "input#reminder_minutes_before[name=?]", "reminder[minutes_before]"
      assert_select "input#reminder_event[name=?]", "reminder[event]"
    end
  end
end
