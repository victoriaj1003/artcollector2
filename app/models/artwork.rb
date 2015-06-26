class Artwork < ActiveRecord::Base

	belongs_to :article

  validates :source_url, presence: true
  validates :title, presence: true
  validates :artist, presence: true
  validates :year_created, presence: true
  validates :origin_location, presence: true
  # validates :history, presence: true, length: { maximum: 1000 }
  # has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.jpg"
  # validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/


  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

end
