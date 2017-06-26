# This is a set_default for the image url for the skill.rb
module Placeholder
  extend ActiveSupport::Concern
  def self.image_generator(height:, width:)
      # #{height} is a dynamic value. That is why a # is there. 
    "http://placehold.it/#{height}x#{width}"
  end
end