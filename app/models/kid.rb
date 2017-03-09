class Kid < ApplicationRecord

  belongs_to :user

  has_many :milestones

  
  
end
