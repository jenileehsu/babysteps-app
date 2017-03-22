class Kid < ApplicationRecord

  belongs_to :user

  has_many :milestones

  has_attached_file :image,
                    :styles => { :medium => "150x150>", :thumb => "44x44#" },
                    :default_url => "/images/:style/missing.png"

  validates_attachment :image, :presence => true,
                       :content_type => { :content_type => ["image/jpeg", "image/gif", "image/png"] },
                       :size => { :in => 0..1000.kilobytes }
  
end
