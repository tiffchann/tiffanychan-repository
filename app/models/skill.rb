class Skill < ApplicationRecord
    include Placeholder
    
    validates_presence_of :title, :percent_utilized

after_initialize :set_defaults

def set_defaults
    # ||= sets the default but allows the your images to change if you want. 
   self.badge ||= Placeholder.image_generator(height: '250', width: '250')
end
end
