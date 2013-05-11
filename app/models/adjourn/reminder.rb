module Adjourn
  class Reminder < ActiveRecord::Base
    # relations
    belongs_to :event

    # accessors
    attr_accessible :minutes_before

    # validations
    validates :minutes_before, presence: true, numericality: true, inclusion: { in: [10, 15, 20, 25, 30, 45, 60, 120, 180, 720, 1440] }

  end
end
