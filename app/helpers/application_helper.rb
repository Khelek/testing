module ApplicationHelper
  def default_form_options(options = {})
    {html: {class: 'form-horizontal'}, wrapper: :horizontal_form}.merge options
  end
end
