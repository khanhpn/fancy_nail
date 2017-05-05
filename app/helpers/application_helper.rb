module ApplicationHelper
  def default_image?(image)
    return image_tag(image, size: "140x240") if image.present?
    image_tag("default_image.jpg", size: "140x240")
  end
end
