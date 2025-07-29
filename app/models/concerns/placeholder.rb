module Placeholder
  extend ActiveSupport::Concern

  def self.image_generator(height: , width:)
   "https://placehold.co/#{width}x#{height}"
  end
end

