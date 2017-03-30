class Kid < ApplicationRecord
  
  belongs_to :user

  has_many :milestones

  has_attached_file :avatar,
                    :styles => { 
                      :medium => "150x150>", 
                      :thumb => "44x44#" 
                      },
                    :default_url => "/assets/baby_avatar.png"

  validates_attachment :avatar, :presence => true,
                       :content_type => { :content_type => ["image/jpeg", "image/gif", "image/png"] },
                       :size => { :in => 0..1000.kilobytes }
  
  extend FriendlyId
  friendly_id :first_name, use: :slugged

end
