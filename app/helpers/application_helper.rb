module ApplicationHelper
  def page_title
    title = 'ととのえて'
    title = @page_title + ' | ' + title if @page_title
    title
  end

end
