module RoomsHelper
  def image_pat(room)
    if room.image.present?
      image_tag(room.image, alt: 'Property Image', class:"img_preview")
    elsif room.image_url.present?
      image_tag(room.image_url, alt: 'Property Image', class:"img_preview")
    else 
    end
  end
end
