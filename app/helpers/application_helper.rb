module ApplicationHelper
  def short_form_display
    params[:action] == "search" ? {} : {style: "display: none"}
  end

  def long_form_display
    if params[:action] == "search" && params[:search_type] == "complex"
      {}
    else
      {style: "display: none"}
    end
  end
end
