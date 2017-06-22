class Blog < ApplicationRecord
    # An enum gives us the ability to change the state of the data very quickly. 
    enum status: {draft: 0, published: 1}
    extend FriendlyId
  friendly_id :title, use: :slugged
end
