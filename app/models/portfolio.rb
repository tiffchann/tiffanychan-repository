class Portfolio < ApplicationRecord
    validates_presence_of :title, :body, :main_image, :thumb_image

# Displays only the posts with angular as a subtitle.
def self.angular
   where(subtitle: 'Angular') 
   
end
# This scope covers all the posts with rails on ruby subtitles.
# This is a simplified version of def self.angular above.
scope :ruby_on_rails_portfolio_items, -> { where(subtitle: 'Ruby on Rails') }
end
