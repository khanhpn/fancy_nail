module ApplicationHelper
  def default_image?(image)
    return image_tag(image, size: "140x190") if image.present?
    image_tag("default_image.jpg", size: "140x190")
  end

  def youtube_video(video_url)
    video_url = "" if video_url.nil?
    render :partial => 'layouts/shared/video', locals: { url: video_url }
  end
end
