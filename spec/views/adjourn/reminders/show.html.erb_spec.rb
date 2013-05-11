require 'spec_helper'

describe "reminders/show" do
  before(:each) do
    @reminder = assign(:reminder, stub_model(Reminder,
      :minutes_before => 1,
      :event => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(//)
  end
end
