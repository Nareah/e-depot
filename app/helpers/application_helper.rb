# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  
  
  def image_load_tag(image_url)
    image = image_tag(image_url)
    #return image if image.present?
    return image_tag("/images/rails.png")
  end
  
  
end
