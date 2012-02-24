class Foretelling < ActiveRecord::Base

  belongs_to :user
  has_many :votes, :class_name => Foretelling::Vote, :dependent => :destroy
  has_many :votes_before_due, :class_name => Foretelling::VoteBefore
  has_many :votes_after_due, :class_name => Foretelling::VoteAfter

  validates :content, :user, :presence => true
  validates_associated :user
  validate :due_date, :validate_due_date_is_lower_that_three_days
  validates :is_personal, :presence => true
  
  
  private

  def validate_due_date_is_lower_that_three_days
    if due_date < 3.days.from_now
      errors.add(:due_date, "errors.models.foretelling.attributes.due_date.must_be_lower_that_three_days")
    end
  end

end
