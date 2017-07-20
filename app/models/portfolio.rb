class Portfolio < ApplicationRecord
    has_many :technologies
    accepts_nested_attributes_for :technologies, 
                                reject_if: lambda { |attrs| attrs['name'].blank?}
    
    include Placeholder
    
    validates_presence_of :title, :body, :main_image, :thumb_image
    
    mount_uploader :thumb_image, PortfolioUploader
    mount_uploader :main_image, PortfolioUploader


    # Displays only the posts with angular as a subtitle.
    def self.angular
       where(subtitle: 'Angular') 
       
    end
    
    def self.by_position
       order("position ASC") 
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


