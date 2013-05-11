require 'spec_helper'

describe "reminders/index" do
  before(:each) do
    assign(:reminders, [
      stub_model(Reminder,
        :minutes_before => 1,
        :event => nil
      ),
      stub_model(Reminder,
        :minutes_before => 1,
        :event => nil
      )
    ])
  end

  it "renders a list of reminders" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
