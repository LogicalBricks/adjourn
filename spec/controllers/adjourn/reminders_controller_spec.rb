require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

module Adjourn
  describe RemindersController do
  
    # This should return the minimal set of attributes required to create a valid
    # Reminder. As you add validations to Reminder, be sure to
    # adjust the attributes here as well.
    let(:valid_attributes) { { "minutes_before" => "1" } }
  
    # This should return the minimal set of values that should be in the session
    # in order to pass any filters (e.g. authentication) defined in
    # RemindersController. Be sure to keep this updated too.
    let(:valid_session) { {} }
  
    describe "GET index" do
      it "assigns all reminders as @reminders" do
        reminder = Reminder.create! valid_attributes
        get :index, {}, valid_session
        assigns(:reminders).should eq([reminder])
      end
    end
  
    describe "GET show" do
      it "assigns the requested reminder as @reminder" do
        reminder = Reminder.create! valid_attributes
        get :show, {:id => reminder.to_param}, valid_session
        assigns(:reminder).should eq(reminder)
      end
    end
  
    describe "GET new" do
      it "assigns a new reminder as @reminder" do
        get :new, {}, valid_session
        assigns(:reminder).should be_a_new(Reminder)
      end
    end
  
    describe "GET edit" do
      it "assigns the requested reminder as @reminder" do
        reminder = Reminder.create! valid_attributes
        get :edit, {:id => reminder.to_param}, valid_session
        assigns(:reminder).should eq(reminder)
      end
    end
  
    describe "POST create" do
      describe "with valid params" do
        it "creates a new Reminder" do
          expect {
            post :create, {:reminder => valid_attributes}, valid_session
          }.to change(Reminder, :count).by(1)
        end
  
        it "assigns a newly created reminder as @reminder" do
          post :create, {:reminder => valid_attributes}, valid_session
          assigns(:reminder).should be_a(Reminder)
          assigns(:reminder).should be_persisted
        end
  
        it "redirects to the created reminder" do
          post :create, {:reminder => valid_attributes}, valid_session
          response.should redirect_to(Reminder.last)
        end
      end
  
      describe "with invalid params" do
        it "assigns a newly created but unsaved reminder as @reminder" do
          # Trigger the behavior that occurs when invalid params are submitted
          Reminder.any_instance.stub(:save).and_return(false)
          post :create, {:reminder => { "minutes_before" => "invalid value" }}, valid_session
          assigns(:reminder).should be_a_new(Reminder)
        end
  
        it "re-renders the 'new' template" do
          # Trigger the behavior that occurs when invalid params are submitted
          Reminder.any_instance.stub(:save).and_return(false)
          post :create, {:reminder => { "minutes_before" => "invalid value" }}, valid_session
          response.should render_template("new")
        end
      end
    end
  
    describe "PUT update" do
      describe "with valid params" do
        it "updates the requested reminder" do
          reminder = Reminder.create! valid_attributes
          # Assuming there are no other reminders in the database, this
          # specifies that the Reminder created on the previous line
          # receives the :update_attributes message with whatever params are
          # submitted in the request.
          Reminder.any_instance.should_receive(:update_attributes).with({ "minutes_before" => "1" })
          put :update, {:id => reminder.to_param, :reminder => { "minutes_before" => "1" }}, valid_session
        end
  
        it "assigns the requested reminder as @reminder" do
          reminder = Reminder.create! valid_attributes
          put :update, {:id => reminder.to_param, :reminder => valid_attributes}, valid_session
          assigns(:reminder).should eq(reminder)
        end
  
        it "redirects to the reminder" do
          reminder = Reminder.create! valid_attributes
          put :update, {:id => reminder.to_param, :reminder => valid_attributes}, valid_session
          response.should redirect_to(reminder)
        end
      end
  
      describe "with invalid params" do
        it "assigns the reminder as @reminder" do
          reminder = Reminder.create! valid_attributes
          # Trigger the behavior that occurs when invalid params are submitted
          Reminder.any_instance.stub(:save).and_return(false)
          put :update, {:id => reminder.to_param, :reminder => { "minutes_before" => "invalid value" }}, valid_session
          assigns(:reminder).should eq(reminder)
        end
  
        it "re-renders the 'edit' template" do
          reminder = Reminder.create! valid_attributes
          # Trigger the behavior that occurs when invalid params are submitted
          Reminder.any_instance.stub(:save).and_return(false)
          put :update, {:id => reminder.to_param, :reminder => { "minutes_before" => "invalid value" }}, valid_session
          response.should render_template("edit")
        end
      end
    end
  
    describe "DELETE destroy" do
      it "destroys the requested reminder" do
        reminder = Reminder.create! valid_attributes
        expect {
          delete :destroy, {:id => reminder.to_param}, valid_session
        }.to change(Reminder, :count).by(-1)
      end
  
      it "redirects to the reminders list" do
        reminder = Reminder.create! valid_attributes
        delete :destroy, {:id => reminder.to_param}, valid_session
        response.should redirect_to(reminders_url)
      end
    end
  
  end
end
