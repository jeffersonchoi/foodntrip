module ApplicationHelper

  #Returns the full title on a per-page basis

  def full_title(page_title = '')
    base_title = "FoodNTrip"
    if page_title.empty?
      base_title
    else
      "#{page_title} | #{base_title}"
    end
  end

  def method_caller(obj, *args)
    args.each do |arg|
      return nil unless obj.respond_to? arg
      obj = obj.send(arg)
    end
    return obj
  end

end
