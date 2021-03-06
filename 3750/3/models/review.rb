class Review < ActiveRecord::Base
  BAD_GRADE = 2

  belongs_to :user
  belongs_to :restaurant
  validates :text, presence: true, length: { minimum: 20 }, if: :bad_review?
  validates_presence_of :grade

  def bad_review?
    grade <= BAD_GRADE
  end

  def review_approved(restaurant)
    save
    restaurant.update_average_grade
  end

  def review_owner?(user)
    user_id == user.id
  end
end
