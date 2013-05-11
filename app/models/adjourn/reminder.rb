module Adjourn
  class Reminder < ActiveRecord::Base
    # constants
    OPTIONS = [['10 minutes', 10], ['15 minutes', 15], ['20 minutes', 20], ['25 minutes', 25], ['30 minutes', 30], ['45 minutes', 45], ['1 hour', 60], ['2 hour', 120], ['3 hour', 180], ['1 day', 720], ['2 day', 1440]]
    
    # relations
    belongs_to :event

    # accessors
    attr_accessible :minutes_before

    # validations
    validates :minutes_before, presence: true, numericality: true, inclusion: { in: [10, 15, 20, 25, 30, 45, 60, 120, 180, 720, 1440] }

  end
end
