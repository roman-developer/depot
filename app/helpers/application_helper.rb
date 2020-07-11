module ApplicationHelper
  def render_if(condition, record)
    if condition
      record
    end
  end
end
