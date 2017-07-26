class Blog < ApplicationRecord
    
    # An enum gives us the ability to change the state of the data very quickly. 
    enum status: {draft: 0, published: 1}
    extend FriendlyId
  friendly_id :title, use: :slugged
  
  #This is data validation, which validates the presence of data. 
  #In this case, it's going to validate if the user inputted a title and a body. 
  validates_presence_of :title, :body
  
  # belongs_to :topic
  
  has_many :comments, dependent: :destroy
  
  def self.recent
    order("created_at DESC")
  end
end
