class AddSlugToBlogs < ActiveRecord::Migration[5.1]
  def change
    add_column :blogs, :slug, :string
    add_index :blogs, :slug, unique: true
    
    #uniq is an optional parameter that indicates to the system that we want each slug to be unique. 
    #We obviously don't want two people to have the same slug because then, the database won't know which blog to show for which slug.
  end
end
