class Itinerary < ApplicationRecord
  WEEK_DAYS=7

  belongs_to :user
  belongs_to :group

  def self.compile_itinerary(group_id)
    itinerary = {}
    user_with_work_days = Itinerary
      .where(group_id: group_id)
      .pluck(:user_id, :work_days)

    WEEK_DAYS.times do |day|
      user_with_work_days.each do |user|
        if user[1].at(day)
          itinerary[day] = user[0]
        else
          itinerary[day] = nil
        end
      end
    end

    itinerary
  end
end
