module Adjourn
  class Event < ActiveRecord::Base
    # relations
    belongs_to :user, class_name: Adjourn.user_class
    has_many :reminders

    # accessors
    attr_accessible :description, :from_date, :from_time, :full_day, :name, :to_date, :to_time, :reminders_attributes

    accepts_nested_attributes_for :reminders

    # validations
    validates_presence_of :from_date, :to_date, :description
    validates_presence_of :from_time, :to_time, unless: :full_day?

    # scopes
    default_scope order('from_date DESC')

    def full_day?
      full_day == true
    end
    
  end
end
