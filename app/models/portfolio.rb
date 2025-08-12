class Portfolio < ApplicationRecord
  has_many :technologies

  # just below is for allowing nested attributes for technologies
  accepts_nested_attributes_for :technologies,
   reject_if: lambda { |attrs| attrs['name'].blank? }

  include Placeholder
  validates_presence_of :title, :body, :main_image, :thumb_image

  #custom scope-->step-1
  def self.angular
    where(subtitle: 'Angular')  
  end

  #or-->
  scope :ruby_on_rails_portfolio_items, -> { where(subtitle: 'Ruby on Rails') }
   
  def self.by_position
    order("position ASC")
  end

  #way to set default value in rails using callback -->
  after_initialize :set_defaults

  def set_defaults
    # self.main_image ||= "https://placehold.co/300x200"
    # self.thumb_image ||= "https://placehold.co/300x150"
    self.main_image ||= Placeholder.image_generator(height: '300' , width: '200')
    self.thumb_image ||= Placeholder.image_generator(height: '300' , width: '150')
  end

  # above working is -->

  # if self.main_image == nil && self.thumb_image == nil
  #   self.main_image = "https://placehold.co/300x200
  #   self.thumb_image = "https://placehold.co/300x150"
  #  end 
  # end

  
end

