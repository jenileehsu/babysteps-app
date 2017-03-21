class Kid < ApplicationRecord

  belongs_to :user

  has_many :milestones

  # has_attached_file :image
  
end
