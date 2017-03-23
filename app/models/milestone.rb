class Milestone < ApplicationRecord

  belongs_to :kid

  has_many :images
  
end
