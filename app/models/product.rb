class Product < ActiveRecord::Base
  
  #validates :title, :description, :image_url, :presence => true
  validates_presence_of :title, :description, :image_url
  
  validates_numericality_of :price, :greater_than_or_equal_to => 0.01
  
  validates_format_of :image_url, :with => %r{\.(gif|jpg|png)$}i, :message => 'must be a URL for GIF, JPG or PNG image.'

  default_scope :order => 'title'

  
end
