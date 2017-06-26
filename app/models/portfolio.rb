class Portfolio < ApplicationRecord
    has_many :technologies
    include Placeholder
    
    validates_presence_of :title, :body, :main_image, :thumb_image

# Displays only the posts with angular as a subtitle.
def self.angular
   where(subtitle: 'Angular') 
   
end
# This scope covers all the posts with rails on ruby subtitles.
# This is a simplified version of def self.angular above.
scope :ruby_on_rails_portfolio_items, -> { where(subtitle: 'Ruby on Rails') }

after_initialize :set_defaults

def set_defaults
    # ||= sets the default but allows the your images to change if you want. 
   self.main_image ||= Placeholder.image_generator(height: '600', width: '400')
   self.thumb_image ||= Placeholder.image_generator(height: '350', width: '200')
end
end


