require 'spec_helper'

describe "events/edit" do
  before(:each) do
    @event = assign(:event, stub_model(Event,
      :name => "MyString",
      :full_day => false,
      :description => "MyText",
      :user => nil
    ))
  end

  it "renders the edit event form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", event_path(@event), "post" do
      assert_select "input#event_name[name=?]", "event[name]"
      assert_select "input#event_full_day[name=?]", "event[full_day]"
      assert_select "textarea#event_description[name=?]", "event[description]"
      assert_select "input#event_user[name=?]", "event[user]"
    end
  end
end
