class Foretelling::Vote < ActiveRecord::Base

  belongs_to :user
  belongs_to :foretelling

  validates :user, :foretelling, :associated => true, :presence => true
  validates :is_positive, :presence => true, :allow_blank => false

end
