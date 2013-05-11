require 'spec_helper'

module Adjourn
  describe Event do

    it { should belong_to :user  }
    it { should have_many :reminders  }
    it { should validate_presence_of :from_date  }
    it { should validate_presence_of :to_date  }
    it { should validate_presence_of :description  }

    context 'if full_day' do
      before { subject.stub(:full_day).and_return true }
      it { should_not validate_presence_of :from_time }
      it { should_not validate_presence_of :to_time }
    end

    context 'if not full_day' do
      before { subject.stub(:full_day).and_return false }
      it { should validate_presence_of :from_time }
      it { should validate_presence_of :to_time }
    end
    
  end
end
