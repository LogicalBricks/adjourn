require 'spec_helper'

describe "reminders/edit" do
  before(:each) do
    @reminder = assign(:reminder, stub_model(Reminder,
      :minutes_before => 1,
      :event => nil
    ))
  end

  it "renders the edit reminder form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", reminder_path(@reminder), "post" do
      assert_select "input#reminder_minutes_before[name=?]", "reminder[minutes_before]"
      assert_select "input#reminder_event[name=?]", "reminder[event]"
    end
  end
end
