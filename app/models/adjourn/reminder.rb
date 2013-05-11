module Adjourn
  class Reminder < ActiveRecord::Base
    # constants
    OPTIONS = [["10 #{I18n.t(:minutes)}", 10], ["15 #{I18n.t(:minutes)}", 15], ["20 #{I18n.t(:minutes)}", 20], ["25 #{I18n.t(:minutes)}", 25], ["30 #{I18n.t(:minutes)}", 30], ["45 #{I18n.t(:minutes)}", 45], ["1 #{I18n.t(:hour)}", 60], ["2 #{I18n.t(:hours)}", 120], ["3 #{I18n.t(:hours)}", 180], ["1 #{I18n.t(:day)}", 720], ["2 #{I18n.t(:days)}", 1440]]
    
    # relations
    belongs_to :event

    # accessors
    attr_accessible :minutes_before

    # validations
    validates :minutes_before, presence: true, numericality: true, inclusion: { in: [10, 15, 20, 25, 30, 45, 60, 120, 180, 720, 1440] }

  end
end
