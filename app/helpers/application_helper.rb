module ApplicationHelper
  # Return the full title on a pre-page basis.
  
  def full_title(page_title='')
    base_title = "GLBRC test apll"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end
end
