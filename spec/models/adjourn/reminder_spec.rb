require 'spec_helper'

module Adjourn
  describe Reminder do
    
    it { should belong_to :event }
    it { should validate_presence_of :minutes_before }
    it { should validate_numericality_of :minutes_before }
    it { should ensure_inclusion_of(:minutes_before).in_array [10, 15, 20, 25, 30, 45, 60, 120, 180, 720, 1440] }

  end
end
