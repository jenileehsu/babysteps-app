class Milestone < ApplicationRecord

  belongs_to :kid

  has_many :images

  has_many :comments
  
end
