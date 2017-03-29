class Image < ApplicationRecord

  belongs_to :milestone

  has_attached_file :avatar,
                    :styles => { :medium => "150x150>", :thumb => "75x75#", :icon => "100x100#"},
                    :default_url => "/images/:style/missing.png"

  validates_attachment :avatar, :presence => true,
                       :content_type => { :content_type => ["image/jpeg", "image/gif", "image/png"] },
                       :size => { :in => 0..10000.kilobytes }

end
