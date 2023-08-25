class Project < ApplicationRecord
  has_many :tasks, inverse_of: :project
  accepts_nested_attributes_for :tasks, reject_if: :all_blank, allow_destroy: true

  # simple calender
  def start_time
    created_at
  end

end
